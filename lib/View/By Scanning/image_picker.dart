import 'package:carbon_footprint/Backend/Utils/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'dart:convert';
import '../Product Page/ProductPage.dart';

class GalleryImagePick extends StatefulWidget {
  const GalleryImagePick({super.key});

  @override
  State<GalleryImagePick> createState() => _GalleryImagePickState();
}

class _GalleryImagePickState extends State<GalleryImagePick> {

  File ? _image;


  bool isSave = false;
  void toggledSave(){
    setState(() {
      isSave = !isSave;
    });
  }

  final picker =ImagePicker();
  firebase_storage.FirebaseStorage storage=firebase_storage.FirebaseStorage.instance;
  DatabaseReference databaseRef =FirebaseDatabase.instance.ref('UploadedImages');
  final  auth =FirebaseAuth.instance;
  final TextEditingController _searchController = TextEditingController();
  DatabaseReference _databaseReference =FirebaseDatabase.instance.ref('ProductData');



  Future getImage(ImageSource source) async{
    final pickerImage =await picker.pickImage(source: source);

    setState(() {
      if (pickerImage != null) {
        // Extract the file path
        String? imagePath = pickerImage.path;

        if (imagePath != null) {
          // Get the file extension from the image path
          String extension = imagePath.split('.').last;

          // Check if the extension is valid
          if (extension.isNotEmpty) {
            // Rename the file with the .jpg extension
            String newImagePath = imagePath.replaceAll(
                RegExp('\.$extension\$'), '.jpg');

            // Rename the file and assign it to _image
            _image = File(newImagePath);
          } else {
            print('Error: File extension is empty');
          }
        } else {
          print('Error: Image path is null');
        }
      } else {
        print('No image error');
      }
    });


  }





  Future<void> analyzeImageAndSearchDatabase(BuildContext context) async {
    try {
      // Fetch image URL from Firebase Realtime Database
      final String? firebaseImageUrl = await  fetchImageUrlFromDatabase();

      // Check if the image URL is null
      if (firebaseImageUrl != null) {
        // Fetch image data from Firebase Realtime Database
        final response = await http.get(Uri.parse(firebaseImageUrl));
        if (response.statusCode == 200) {
          // Send image data to Gemini API for analysis
          final geminiUrl = Uri.parse("https://generativelanguage.googleapis.com/v1beta/models/gemini-pro-vision:generateContent?key=AIzaSyAo0je0xAZTcJv8_uHejb6S9PVEzDw-MFI");
          final headers = {'Content-Type': 'application/json'};
          final body = jsonEncode({
            "contents": [
              {
                "parts": [
                  {
                    "inlineData": {
                      "mimeType": "image/jpeg",
                      "data":  base64Encode(response.bodyBytes)
                    }
                  },
                  {
                    "text": "What is the main object in this image? Respond with a single word for the object name, without any punctuation. "
                  }
                ]
              }
            ],
            "generationConfig": {
              "temperature": 0.95,
              "topK": 32,
              "topP": 1,
              "maxOutputTokens": 4096,
              "stopSequences": []
            },
            "safetySettings": [
              {
                "category": "HARM_CATEGORY_HARASSMENT",
                "threshold": "BLOCK_MEDIUM_AND_ABOVE"
              },
              {
                "category": "HARM_CATEGORY_HATE_SPEECH",
                "threshold": "BLOCK_MEDIUM_AND_ABOVE"
              },
              {
                "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
                "threshold": "BLOCK_MEDIUM_AND_ABOVE"
              },
              {
                "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
                "threshold": "BLOCK_MEDIUM_AND_ABOVE"
              }
            ]
          });

          final geminiResponse = await http.post(geminiUrl, headers: headers, body: body);
          if (geminiResponse.statusCode == 200) {
            // Parse Gemini API response
            Map<dynamic, dynamic> geminiData = jsonDecode(geminiResponse.body);

            // Print the geminiData to see its structure
            print(geminiData);

              dynamic answerToQuestionRaw = geminiData['candidates'][0]['content']['parts'][0]['text'];

              print(answerToQuestionRaw);

            searchElement( answerToQuestionRaw,context,firebaseImageUrl,  toggledSave(),);

            print('Extracted Information:');

            //storeGeminiResponse( geminiData);
          } else {

            _openAnimatedDialog(context);
            toggledSave();
            print('Failed to analyze image with Gemini API. Status code: ${geminiResponse.statusCode}');
          }
        } else {
          _openAnimatedDialog(context);
          print('Failed to fetch image from Firebase Realtime Database. Status code: ${response.statusCode}');
        }
      } else {
        _openAnimatedDialog(context);
        print('Image URL is null. Unable to fetch image data from Firebase Realtime Database.');
      }
    } catch (error) {
      _openAnimatedDialog(context);
      print('Error analyzing image and searching database: $error');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                height: 40,
                width: 40,
                image: AssetImage('images/Untitled design (4).png'),
              ),
              RichText(
                text: TextSpan(
                    text:  'Green',style: GoogleFonts.pottaOne(color:Colors.green,fontSize: 24,fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text:'Trace',style: GoogleFonts.pottaOne(color:Colors.black87,fontSize: 24,fontWeight: FontWeight.w400),

                      )
                    ]
                ),
                //
              ),
            ],
          ),
          const SizedBox(width: 100,),
        ],

        backgroundColor: Color(0xffFBF6EE),
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 400,
            decoration: const BoxDecoration(
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(135),bottomRight: Radius.circular(135)),
              color: Color(0xffC1FFC0),
              shape: BoxShape.rectangle,
            ),
           ),


           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              Center(
                  child: Container(
                    width: 297,
                    height: 311,
                    decoration: BoxDecoration(

                      color: Colors.grey.shade50,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 6,
                          blurRadius: 3, // Reduced blur radius for subtle effect
                          offset: const Offset(0, 3), // Changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: _image==null?  Container(

                        width: 294,
                        height: 311,
                        child: Lottie.asset('assets/ImaheUploading.json'),

                      ):Image.file(_image!.absolute,width:297 ,height: 311,fit: BoxFit.cover,),

                    ),
                  )
              ),

              SizedBox(height: 110,),

              SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(' Upload From',style: GoogleFonts.poppins(color:Colors.grey.shade600,fontSize: 14,fontWeight: FontWeight.w400) ,),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        getImage(ImageSource.camera);
                      },

                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(85, 85)),
                        backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                        elevation: MaterialStateProperty.all(5), // Adjust elevation for the desired depth effect
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child:  Icon(CupertinoIcons.camera_fill,color: Colors.black,size: 40,),
                    ),
                    SizedBox(width: 32,),
                    ElevatedButton(
                      onPressed: () {
                        getImage(ImageSource.gallery);
                      },

                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(85, 85)),
                        backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                        elevation: MaterialStateProperty.all(5), // Adjust elevation for the desired depth effect
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Image(
                          height: 40,
                          width: 40,
                          image: AssetImage('images/image-gallery.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              )


            ],
          ),
          Center(
            child: isSave?Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 265),
                  child: Container(

                    width: 294,
                    height: 311,
                   child: Lottie.asset('assets/Animation - 1708370259781.json'),

                  ),

                ),

              ],

            ): Padding(
              padding: const EdgeInsets.only(left: 120,top: 440,right: 120,bottom: 250),
              child: ElevatedButton(
                onPressed: ()async{//reference of database
                  if(_image!=null){
                    toggledSave();



//reference of database


                    String id =DateTime.now().millisecondsSinceEpoch.toString();
                    firebase_storage.Reference ref = firebase_storage
                        .FirebaseStorage.instance
                        .ref('foldername/' + id );
                    firebase_storage.UploadTask uploadTask =
                    ref.putFile(_image!, firebase_storage.SettableMetadata(
                      contentType: 'image/jpeg', // Specify the content type
                    ));
                    await Future.value(uploadTask).then((value) async{
                      var newurl = await ref.getDownloadURL();

                      databaseRef.child('Image').set({
                        'id':id,
                        'title' : newurl.toString(),


                      }).then((value){

                        Utils().toastMessage('Scanning...');
                      });

                    }).onError((error, stackTrace){
                      Utils().toastMessage(error.toString());
                      print(error.toString());
                    });
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>FetchImage()));

                    analyzeImageAndSearchDatabase(context);

                  }else{
                    Utils().toastMessage('Please Upload Image');
                  }



                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  elevation: 5, // Adjust elevation for the desired depth effect
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    'UPLOAD',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],

      ),

    );
  }
}


Future<String?> searchElement(String answerToQuestionRaw, BuildContext context, String fetchImageUrlFromDatabase, void toggledSave) async {
  try {
    final ref = FirebaseDatabase.instance.ref('ProductData');
    DatabaseEvent snapshotEvent = await ref.once();

    DataSnapshot snapshot = snapshotEvent.snapshot;
    Map<dynamic, dynamic>? map = snapshot.value as dynamic;

    List<dynamic> list = map!.values.toList();
    print('Image         ');
    print(fetchImageUrlFromDatabase);

    print('Number of elements in list: ${list.length}');
    print('Search Query: $answerToQuestionRaw');

    // Implement your search logic here
    // For example, searching for an element based on the query
    String? foundElement;
    for (int i = 0; i < list.length; i++) {
      if (list[i]['title'].toString().trim().toLowerCase() == answerToQuestionRaw.trim().toLowerCase()) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage(
          image: fetchImageUrlFromDatabase.toString(),
          productname: list[i]['title'].toString(),
          carbonFootprintArticle: list[i]['carbonFootprint']['about'].toString(),
          carbonFootprintvalue:  list[i]['carbonFootprint']['value'].toString(),
          waterFootprintArticle:list[i]['waterfootprint']['about'].toString(),
          waterFootprintvalue: list[i]['waterfootprint']['value'].toString(),
          recycleInformation:list[i]['recycleInfo'].toString(),

        )

        )
        );
              // print(foundElement);}
        break;
      }
    }

    if (foundElement != null) {
      print('Element found: $foundElement');
      toggledSave;




    } else {
      print('Element not found for query: $answerToQuestionRaw');


    }

    // Returning the found element (or null if not found)
    return foundElement;
  } catch (error) {
    _openAnimatedDialog(context);
    print('Error fetching data: $error');
    return null;
  }
}


Future<String?> fetchImageUrlFromDatabase() async {
  try {
    final ref = FirebaseDatabase.instance.ref('UploadedImages/Image');
    DatabaseEvent snapshotEvent = await ref.once();

    DataSnapshot snapshot = snapshotEvent.snapshot;

    String? imageUrl = snapshot.child('title').value.toString();

       print(imageUrl);
    return imageUrl;
  } catch (error) {
    print('Error fetching image URL: $error');
    return null;
  }
}



void _openAnimatedDialog(BuildContext context){
  showGeneralDialog(
      context: context,
      pageBuilder: (context,animation1,animation2){
        return Container();
      },
    transitionBuilder: (context,a1,a2,widget){
        return ScaleTransition(
          scale: Tween<double>(begin: 0.5,end: 1.0).animate(a1),
          child: AlertDialog(

            content: Text('Please Scan Another Product '),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
          ),
        );
    }
  );
}

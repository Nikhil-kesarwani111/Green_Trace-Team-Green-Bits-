import 'package:carbon_footprint/View/LoginOrSingUP/Enter_Otp.dart';
import 'package:carbon_footprint/View/Home%20Page/Main%20Page%20Or%20Front%20Page/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:path/path.dart';

import '../../Backend/Utils/Utils.dart';
import '../../Navigations/routes_name.dart';

class MobileLoginOtp extends StatefulWidget {
  const MobileLoginOtp({super.key});

  @override
  State<MobileLoginOtp> createState() => _MobileLoginOtpState();
}

class _MobileLoginOtpState extends State<MobileLoginOtp> {
  final FirebaseAuth auth=FirebaseAuth.instance;
  final phoneNumberController=TextEditingController();
  final NameController=TextEditingController();
  final _formKey = GlobalKey<FormState>();//for checking email is empty or not













  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start
            ,
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
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
        
              SizedBox(height: 50,),
              // Center(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(' SignUp to ',style: GoogleFonts.poppins(color:Colors.black
              //           ,fontSize: 16,fontWeight: FontWeight.w600) ,),
              //       Text('Green',style: GoogleFonts.poppins(color:Colors.green
              //           ,fontSize: 16,fontWeight: FontWeight.w600) ,),
              //       Text('Trace',style: GoogleFonts.poppins(color:Colors.black
              //           ,fontSize: 16,fontWeight: FontWeight.w600) ,),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xffFBF6EE),
                    borderRadius: BorderRadius.circular(24),
                    border:Border.all(
                      color :Colors.white,
                      width: 3,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(24),
                    color:   Colors.white,
                    elevation: 10,
                    child: InkWell(
                      onTap: (){
                        signInwith_google(context);
                      },
                      child: Row(
                        children: [
        
                          SizedBox(width: 80,),
                          Image(
                            height: 24,
                            width: 34,
                            image: AssetImage('images/google (1).png'),
                          ),
                          Text(' Sign in with Google',style: GoogleFonts.poppins(color:Colors.black
                              ,fontSize: 14,fontWeight: FontWeight.w400) ,),
        
        
                        ],
                      ),
                    ),
                  ),
                ),
        
              ),
              SizedBox(height: 5,),
              Center(
                child: Text(' OR ',style: GoogleFonts.poppins(color:Colors.grey
                              ,fontSize: 16,fontWeight: FontWeight.w600) ,),
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
        
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(' Name',style: GoogleFonts.poppins(color:Colors.grey
                            ,fontSize: 14,fontWeight: FontWeight.w400) ,),
                      ),
                      SizedBox(height: 8,),
                      TextFormField(
                        controller: NameController,
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter Name';
                          }
                          else
                            return null  ;
                        },
                        decoration: InputDecoration(
                          hintText: 'Type Name',
                          fillColor:  Colors.grey.shade50,
                          filled: true,
        
                          prefixIcon: const Icon(CupertinoIcons.person,color: Colors.grey,),
        
        
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(' Mobile Number',style: GoogleFonts.poppins(color:Colors.grey
                            ,fontSize: 14,fontWeight: FontWeight.w400) ,),
                      ),
                      SizedBox(height: 8,),
                      TextFormField(
                        controller: phoneNumberController,
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter phone number';
                          }
                          else
                            return null  ;
                        },
                        decoration: InputDecoration(
                          hintText: 'Type Mobile Number',
                          fillColor:  Colors.grey.shade50,
                          filled: true,
        
                          prefixIcon: const Icon(Icons.phone_android,color: Colors.grey,),
                          suffixIcon:  PopupMenuButton<int>(
                            color: Colors.lightGreen.shade100,
                              icon:Icon(Icons.arrow_drop_down_circle_rounded,color: Colors.green,size: 30,),
                              itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                                new PopupMenuItem<int>(
                                    value: 1, child: new Text('Email'),),
        
                              ],
                              onSelected: (int value) {
                                Navigator.pushNamed(context, RoutesName.emailLogin);
                              }),
        
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
        
                ),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Container(
                    width: 160,
                    height: 45,
                    child: Center(
                      child: Text('Skip',style: GoogleFonts.poppins(color:Colors.white
                          ,fontSize: 16,fontWeight: FontWeight.w600) ,),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        // BoxShadow(
                        //   color: Colors.black54,
                        //   offset: Offset(0,2),
                        // //  blurRadius: 1,
                        //
                        // )
                      ],
                      border:Border.all(
                        color :Colors.black,
                        // width: 10,
                      ),
        
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.enterotp);
                    },
                    child: Container(
                      width: 160,
                      height: 45,
                      child: InkWell(
                        onTap: (){
        
        
                      //    Navigator.pushReplacementNamed(context,RoutesName.homepage);
                       //    if(_formKey.currentState!.validate()){
                       //      auth.verifyPhoneNumber(
                       //          phoneNumber: phoneNumberController.text,
                       //          verificationCompleted:(_){
                       //
                       //          },
                       //          verificationFailed: (e){
                       //            Utils().toastMessage(e.toString());
                       //          },
                       //          codeSent: (String verificationId,int ? token){
                       // //           Navigator.push(context,MaterialPageRoute(builder: (context)=>VerificationCode(
                       //   //             VerificationId: verificationId))
                       //            );
                       //
                       //          },
                       //          codeAutoRetrievalTimeout: (e){
                       //            Utils().toastMessage(e.toString());
                       //          }
                       //      );
                       //    };
                        },
                        child: Center(
                          child: Text('Send OTP',style: GoogleFonts.poppins(color:Colors.white
                              ,fontSize: 16,fontWeight: FontWeight.w600) ,),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                       //    BoxShadow(
                       //      color: Colors.green,
                       //      offset: Offset(0,2),
                       // //     blurRadius: 1,
                       //
                       //    )
                        ],
                        border:Border.all(
                          color :Colors.green,
                          // width: 10,
                        ),
        
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

   signInwith_google(BuildContext context)  async {

    GoogleSignInAccount ? googleUser =await GoogleSignIn().signIn();

    GoogleSignInAuthentication ?googleauth= await googleUser?.authentication;

    AuthCredential credential=GoogleAuthProvider.credential(
      accessToken: googleauth?.accessToken,
      idToken: googleauth?.idToken,
    );
    UserCredential userCredential=await FirebaseAuth.instance.signInWithCredential(credential);
    print("Akhil");
    print(userCredential.user?.displayName);
    if(userCredential.user!=null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }

  }
}


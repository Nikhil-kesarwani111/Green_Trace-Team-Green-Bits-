import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationalResources extends StatefulWidget {
  const EducationalResources({super.key});

  @override
  State<EducationalResources> createState() => _EducationalResourcesState();
}

class _EducationalResourcesState extends State<EducationalResources> {




  final List<String> _image=[

    'images/pexels-photo-2583835.jpeg.jpg',
    'images/pexels-photo-4381308.jpeg.jpg',
    'images/pexels-photo-929385.jpeg.jpg',
    'images/1_vUUZW-r-ZmzcuC5fUwKLhA (1).jpg',
    'images/desert-drought-dehydrated-clay-soil-60013.jpeg.jpg',
    'images/img.png',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.green,

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70,),
            Center(child: Text('Educational Resources',style: GoogleFonts.poppins(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w700),)),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text('Catch-up on your latest news and eco tips from Green Trace',style: GoogleFonts.poppins(color:Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
            ),
        
            const SizedBox(height: 38.2,),
            Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
        
          ),
        //
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
        
        height: 630,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/New Education.jpg'),
                        fit:BoxFit.fitHeight,
                      )
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

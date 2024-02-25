import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Navigations/routes_name.dart';

class IntroductionToApp extends StatefulWidget {
  const IntroductionToApp({super.key});

  @override
  State<IntroductionToApp> createState() => _IntroductionToAppState();
}

class _IntroductionToAppState extends State<IntroductionToApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF6EE),
      body: Stack(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       colorFilter: ColorFilter.mode(Colors.black87,BlendMode.screen),
          //       filterQuality: FilterQuality.high,
          //   //    opacity: 0,
          //       image: AssetImage('images/backgroud_images_final.png'),
          //       fit :BoxFit.fitHeight,
          //     ),
          //   ),
          // ),
          // ClipPath(
          //   clipper: MyCustomClipper(),
          //   child: Container(
          //     color: Colors.green,
          //     height: 200,
          //   ),
          // ),
          Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 74.0),
              child: Image(
                height: 172,
                width: 169,
                image: AssetImage('images/Untitled design (4).png'),
              ),
            ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 74.0),
                child: RichText(
                  text: TextSpan(
                      text:  'Green',style: GoogleFonts.pottaOne(color:Colors.green,fontSize: 38,fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text:'Trace',style: GoogleFonts.pottaOne(color:Colors.black87,fontSize: 38,fontWeight: FontWeight.w400),

                        )
                      ]
                  ),
                  //
                ),
              ),

            Center(
              child: Text('Find Carbon Footprint of Every Items you Use ',style: GoogleFonts.poppins(color:Colors.black87
                  ,fontSize: 12,fontWeight: FontWeight.w400) ,),
            ),
            SizedBox(height:111 ,),


            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.starting);
              },


              child:Container(
                width: 169,
                height: 50,
                child: Center(
                  child: Text('START',style: GoogleFonts.poppins(color:Colors.white
                      ,fontSize: 24,fontWeight: FontWeight.w700) ,),
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade300,
                      offset: Offset(0,2),
                      blurRadius: 1,

                    )
                  ],
                  border:Border.all(
                    color :Colors.green,
                    // width: 10,
                  ),

                ),
              ),

            ),
            SizedBox(height: 147,),

            Text('Terms and Condition and Privacy Policy ',style: GoogleFonts.poppins(color:Colors.black87
                ,fontSize: 12,fontWeight: FontWeight.w400) ,),
          ],
        ),


        ],

      ),
    );
  }
}

// class MyCustomClipper extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size){
//
//     double w = size.width;
//     double h = size. height;
//
//     final path  = Path();
// // (0, 0) // 1. Point
//     path. lineTo(0, h); // 2.
//     path. quadraticBezierTo(
//       w*0.5,
//       h-100,
//     w,  //4. -Point
//     h,  //4. -Point
//     );
// // A. •Point
//     path. lineTo(w, 0);
//     path. close();
//     return path;
//
//         }
//         @override
//         bool shouldReclip(CustomClipper<Path> oldClipper) {
//
//     return false;
//
//            }
//
//   }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Navigations/routes_name.dart';

class Starting extends StatefulWidget {
  const Starting({super.key});

  @override
  State<Starting> createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // ClipPath(
              //   clipper: MyCustomClipper(),
              //   child: Container(
              //     color: Color(0xffC1FFC0),
              //     height: 200,
              //   ),
              // ),
              Container(
                height: 700,
                  width: 550,

                decoration: BoxDecoration(
                  color: Color(0xffC1FFC0),
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
          Column(
            children: [

              Container(
                height: 350,
                width: 550,

                decoration: BoxDecoration(
                  color: Color(0xffC1FFC0),
                  shape: BoxShape.rectangle,
                ),
              )
            ],
          ),
          Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            SizedBox(height: 80,),
            Image(
              height: 237,
              width: 245,
              image: AssetImage('images/save-earth.png'),
            ),
            SizedBox(height: 80,),
            Center(
              child: Text(' Scan to find out the carbon',style: GoogleFonts.poppins(color:Colors.black
                  ,fontSize: 18,fontWeight: FontWeight.w600) ,),
            ),
            Center(
              child: Text(' footprint of any product',style: GoogleFonts.poppins(color:Colors.black
                  ,fontSize: 18,fontWeight: FontWeight.w600) ,),
            ),
            SizedBox(height: 100),
            Image(
              width: 245,
              image: AssetImage('images/Slider1.png'),
            ),
            SizedBox(height: 20),
            Row(
              children: [

                SizedBox(width: 74,),
                Text(' Skip',style: GoogleFonts.poppins(color:Colors.black
                    ,fontSize: 16,fontWeight: FontWeight.w600) ,),
                SizedBox(width: 72,),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RoutesName.introducing2);
                  },

                  child:Container(
                    width: 175,
                    height: 45,
                    child: Center(
                      child: Text('Next',style: GoogleFonts.poppins(color:Colors.white
                          ,fontSize: 16,fontWeight: FontWeight.w600) ,),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
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
                  ),),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),

        ]
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){

    double w = size.width;
    double h = size. height;

    final path  = Path();
// (0, 0) // 1. Point
    path. lineTo(0, h); // 2.
    path. quadraticBezierTo(
      w*0.5,
      h+100,
    w,  //4. -Point
    h,  //4. -Point
    );
// A. •Point
    path. lineTo(w, 0);
    path. close();
    return path;

        }
        @override
        bool shouldReclip(CustomClipper<Path> oldClipper) {

    return false;

           }

  }


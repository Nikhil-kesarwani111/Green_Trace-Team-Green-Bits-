import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Navigations/routes_name.dart';
import 'dart:io';

class Introducing2 extends StatefulWidget {
  const Introducing2({super.key});

  @override
  State<Introducing2> createState() => _Introducing2State();
}

class _Introducing2State extends State<Introducing2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 700,
                width: 550,

                decoration: const BoxDecoration(
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

                decoration: const BoxDecoration(
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
            const Image(
              height: 337,
              width: 345,
              image: AssetImage('images/save-earth.png'),
            ),
            const SizedBox(height: 80,),
            Center(
              child: Text(' View Carbon footprints',style: GoogleFonts.poppins(color:Colors.black
                  ,fontSize: 18,fontWeight: FontWeight.w600) ,),
            ),
            Center(
              child: Text(' Consumption level',style: GoogleFonts.poppins(color:Colors.black
                  ,fontSize: 18,fontWeight: FontWeight.w600) ,),
            ),

    const SizedBox(height: 100),
            // Image(
            //   width: 245,
            //   image: AssetImage('images/Slider2.png'),
            // ),
    const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 74,),
                Text(' Skip',style: GoogleFonts.poppins(color:Colors.black
                    ,fontSize: 14,fontWeight: FontWeight.w600) ,),
                SizedBox(width:  72,),
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.introducing3);
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

                        border:Border.all(
                          color :Colors.green,
                          // width: 10,
                        ),

                      ),
                    )),
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

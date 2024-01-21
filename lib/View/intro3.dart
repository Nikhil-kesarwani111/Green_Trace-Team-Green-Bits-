import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Navigations/routes_name.dart';

class Introducing3 extends StatefulWidget {
  const Introducing3({super.key});

  @override
  State<Introducing3> createState() => _Introducing3State();
}

class _Introducing3State extends State<Introducing3> {
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
                Image(
                  height: 337,
                  width: 345,
                  image: AssetImage('images/save-earth.png'),
                ),
                SizedBox(height: 80,),
                Center(
                  child: Text('Lower carbon footprint',style: GoogleFonts.poppins(color:Colors.black
                      ,fontSize: 18,fontWeight: FontWeight.w600) ,),
                ),
                Center(
                  child: Text('  alternatives',style: GoogleFonts.poppins(color:Colors.black
                      ,fontSize: 18,fontWeight: FontWeight.w600) ,),
                ),

                SizedBox(height: 100),
                Image(
                  width: 245,
                  image: AssetImage('images/Slider (3).png'),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RoutesName.mobileNOLogin);
                  },
                  child:Container(
                    width: 340,
                    height: 45,
                    child: Center(
                      child: Text('Let\'s  Begin',style: GoogleFonts.poppins(color:Colors.white
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
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ]
      ),

    );
  }
}

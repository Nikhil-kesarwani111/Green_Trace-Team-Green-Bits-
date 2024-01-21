import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Navigations/routes_name.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBCBCBC),
      appBar: AppBar(
        actions: [
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
          SizedBox(width: 100,),
        ],

        backgroundColor: Color(0xffFBF6EE),
      ),
      body:  Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0,horizontal: 21),
            child: Row(
              children: [
                Icon(CupertinoIcons.clear_thick_circled,color: Colors.black,size: 48,),
                SizedBox(width: 240,),
                Icon(Icons.flash_off,color: Colors.black,size: 48,),


              ],
            ),
          ),
          Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
            padding: const EdgeInsets.only(top: 1.0,bottom: 8),
            child: Container(
              height:450,
               width: 350,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(2),


                image: DecorationImage(
                  image: AssetImage('images/10-2-jeans-picture.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
              ),
            SizedBox(height: 80,),
            Container(

               width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 75,),
                  Icon(CupertinoIcons.camera_fill,color: Colors.white,size: 25,),

                                    SizedBox(width:54,),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                                      child: Center(
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.productpage);
                      },
                      child: CircleAvatar(

                        backgroundColor: Colors.black,
                        radius: 35,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 35,
                          child: CircleAvatar(
                            backgroundColor:Colors.black,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,


                            ),
                            radius: 100,
                          ), //CircleAvatar
                        ), //CircleAvatar
                      ),
                    ),
                  ),
                                    ),
                  SizedBox(width:54 ,),
                  Icon(CupertinoIcons.check_mark_circled,color: Colors.white,size: 30,),
                ],
              ),
              height: 95,
              //width: ,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight:Radius.circular(24) ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.shade300,
                    offset: Offset(0,3),
                    blurRadius: 1,

                  )
                ],
                border:Border.all(
                  color :Colors.green,
                  // width: 10,
                ),

              ),
            ),
          ],
        ),
          Center(
            child: Container(
              height:300,
              width: 340,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(2),


                image: DecorationImage(
                  image: AssetImage('images/Group 38.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
// onTap: (){
// Navigator.pushNamed(context, RoutesName.productpage,
// );
// },
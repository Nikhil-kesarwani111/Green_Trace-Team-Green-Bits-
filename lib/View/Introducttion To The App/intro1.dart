import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Navigations/routes_name.dart';

class Starting extends StatefulWidget {
  const Starting({super.key});

  @override
  State<Starting> createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        SystemNavigator.pop();
        return true ;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
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
              // Image(
              //   width: 245,
              //   image: AssetImage('images/Slider1.png'),
              // ),
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
      ),
    );
  }
}



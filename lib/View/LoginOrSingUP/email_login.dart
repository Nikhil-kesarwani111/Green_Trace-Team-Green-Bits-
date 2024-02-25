import 'package:carbon_footprint/View/LoginOrSingUP/Enter_Otp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Navigations/routes_name.dart';

class Email_Login_Otp extends StatefulWidget {
  const Email_Login_Otp({super.key});

  @override
  State<Email_Login_Otp> createState() => _Email_Login_OtpState();
}

class _Email_Login_OtpState extends State<Email_Login_Otp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
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
            Center(
              child: Text(' Type your Email ID',style: GoogleFonts.poppins(color:Colors.black
                  ,fontSize: 18,fontWeight: FontWeight.w600) ,),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(' Email ID',style: GoogleFonts.poppins(color:Colors.grey
                  ,fontSize: 12,fontWeight: FontWeight.w600) ,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),

              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'carbon230@gmail.com',
                  fillColor:  Colors.grey.shade100,
                  filled: true,
                  prefixIcon: const Icon(Icons.email_rounded,color: Colors.grey,),
                  suffixIcon:  PopupMenuButton<int>(
                      color: Colors.lightGreen.shade100,
                      icon:Icon(Icons.arrow_drop_down_circle_rounded,color: Colors.green,size: 30,),
                      itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                        new PopupMenuItem<int>(
                          value: 1, child: new Text('Mobile Number'),),

                      ],
                      onSelected: (int value) {
                        Navigator.pushNamed(context, RoutesName.mobileNOLogin);
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
                   // Navigator.push(context, MaterialPageRoute(builder:(context)=>VerificationCode(VerificationId: VerificationId)))
                  },
                  child: Container(
                    width: 160,
                    height: 45,
                    child: Center(
                      child: Text('Send OTP',style: GoogleFonts.poppins(color:Colors.white
                          ,fontSize: 16,fontWeight: FontWeight.w600) ,),
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
            )
          ],
        ),
      ),
    );
  }
}

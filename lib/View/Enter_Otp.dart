import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../Navigations/routes_name.dart';



class EnterOTP extends StatefulWidget {
  const EnterOTP({super.key});

  @override
  State<EnterOTP> createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
  get otpbox => null;

  @override
  Widget build(BuildContext context) {
    var errorController;
    var textEditingController;
    return Scaffold(
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
              child: Text(' Enter OTP',style: GoogleFonts.poppins(color:Colors.black
                  ,fontSize: 20,fontWeight: FontWeight.w600) ,),
            ),
            SizedBox(height: 50,),
            Center(
              child: Text(' We have sent OTP to your mobile number',style: GoogleFonts.poppins(color:Colors.grey
                  ,fontSize: 12,fontWeight: FontWeight.w600) ,),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: OTPTextField(
                outlineBorderRadius: 10,
                controller: otpbox,
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 50,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                },
              ),
            ),
            Center(
              child: Text('Resend OTP',style: GoogleFonts.poppins(color:Colors.green
                  ,fontSize: 16,fontWeight: FontWeight.w500) ,),
            ),
            Center(
              child: Text('00:59',style: GoogleFonts.poppins(color:Colors.grey
                  ,fontSize: 14,fontWeight: FontWeight.w500) ,),
            ),
            SizedBox(height: 14,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.homedrawer);
              },
              child: Center(
                child: Container(
                  width: 160,
                  height: 45,
                  child: Center(
                    child: Text('Verify',style: GoogleFonts.poppins(color:Colors.white
                        ,fontSize: 16,fontWeight: FontWeight.w700) ,),
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

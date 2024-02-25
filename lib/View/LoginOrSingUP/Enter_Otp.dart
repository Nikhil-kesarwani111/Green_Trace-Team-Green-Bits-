import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../Navigations/routes_name.dart';

class VerificationCode extends StatelessWidget {
  final VerificationId;
   VerificationCode({super.key,
   required this.VerificationId,
   });

  final FirebaseAuth auth=FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();//for checking email is empty or not
  final verifycodeController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    // var errorController;
    //var textEditingController;
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
              child:  Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: verifycodeController ,
                    // obscureText: true,
                    decoration: InputDecoration(
                        hintText: '6 digit code'
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter phone number';
                      }
                      else
                        return null  ;
                    },
                  ),
                ),
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
                  child: InkWell(
                    onTap: ()async{
                      if(_formKey.currentState!.validate()){
                        final crenditial=PhoneAuthProvider.credential(
                          verificationId:VerificationId,
                          smsCode: verifycodeController.text,
                        );
                        try{
                          await auth.signInWithCredential(crenditial);
                          Navigator.pushReplacementNamed(context,RoutesName.homepage);
                        }catch(e){

                        }
                      };
                    },
                    child: Center(
                      child: Text('Verify',style: GoogleFonts.poppins(color:Colors.white
                          ,fontSize: 16,fontWeight: FontWeight.w700) ,),
                    ),
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


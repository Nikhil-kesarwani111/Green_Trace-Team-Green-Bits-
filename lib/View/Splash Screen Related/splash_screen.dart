
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carbon_footprint/View/Splash%20Screen%20Related/Login_splashScreen.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  SplashServices splashScreen=SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

splashScreen.isLogin(context);
    // Timer(Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context,RoutesName.IntroductionToapp);
    // })

    // void dispose () {
    //   // TODO: implement dispose
    //   _controller;
    // }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:Color(0xffFBF6EE),
 // body: SpinKitSquareCircle(
 //   color: Color(0xffF5F7E9),
 //   size: 50.0,
 //   //controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
 // ),

     body:
       Padding(
         padding: const EdgeInsets.all(70.0),
         child: Center(
           child: Row(
             children: [
               AnimatedTextKit(
                 animatedTexts: [
                   ScaleAnimatedText(
                      'Green',
                       duration: Duration(seconds: 5),
                      textStyle: GoogleFonts.pottaOne(color:Colors.green,fontSize: 38,fontWeight: FontWeight.w400,)
                   ),
                 ],
                 onTap: (){

                 },

               ),
               AnimatedTextKit(
                 animatedTexts: [
                   ScaleAnimatedText(
                       'Trace',
                       duration: Duration(seconds: 5),
                       textStyle: GoogleFonts.pottaOne(color:Colors.black,fontSize: 38,fontWeight: FontWeight.w400,)
                   ),
                 ],
                 onTap: (){

                 },

               ),
             ],
           ),
         ),
       ),

    );
  }
}
// child: Center(
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 74.0),
// child: RichText(
// text: TextSpan(
// text:  'Green',style: GoogleFonts.pottaOne(color:Colors.green,fontSize: 38,fontWeight: FontWeight.w400),
// children: [
// TextSpan(
// text:'Trace',style: GoogleFonts.pottaOne(color:Colors.black,fontSize: 38,fontWeight: FontWeight.w400),
//
// )
// ]
// ),
//
// ),
// ),
// ),
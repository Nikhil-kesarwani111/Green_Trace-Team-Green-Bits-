
import 'dart:async';
import 'package:carbon_footprint/View/Introducttion%20To%20The%20App/start.dart';
import 'package:carbon_footprint/View/Home%20Page/Main%20Page%20Or%20Front%20Page/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashServices{

  void isLogin(BuildContext context){
    final FirebaseAuth auth=FirebaseAuth.instance;
    final user =auth.currentUser;
    if(user!=null)
    {
      Timer(const Duration(seconds: 3), () =>
          Navigator.push(context,MaterialPageRoute(builder: (context)=>const HomePage()))
      );
    }
    else{
      Timer(const Duration(seconds: 3), () =>
          Navigator.push(context,MaterialPageRoute(builder: (context)=>const IntroductionToApp()))
      );
    }

  }
}
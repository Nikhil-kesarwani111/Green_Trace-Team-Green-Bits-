import 'package:carbon_footprint/Navigations/routes_name.dart';
import 'package:carbon_footprint/View/ArticleDetail.dart';
import 'package:carbon_footprint/View/Home%20Page/Drawer/Contribution%20Page.dart';
import 'package:carbon_footprint/View/Home%20Page/Drawer/Educaional%20Resources.dart';
import 'package:carbon_footprint/View/LoginOrSingUP/Mobile_login.dart';
import 'package:carbon_footprint/View/By%20Searching/SearchResuilt.dart';
import 'package:carbon_footprint/View/Product%20Page/Types%20of%20Information/carbonFootPrint.dart';
import 'package:carbon_footprint/View/LoginOrSingUP/email_login.dart';
import 'package:carbon_footprint/View/Home%20Page/Main%20Page%20Or%20Front%20Page/home.dart';
import 'package:carbon_footprint/View/By%20Scanning/image_picker.dart';
import 'package:carbon_footprint/View/Introducttion%20To%20The%20App/intro2.dart';
import 'package:carbon_footprint/View/Introducttion%20To%20The%20App/intro3.dart';

import 'package:carbon_footprint/View/readmoreWater.dart';
import 'package:carbon_footprint/View/Product%20Page/Record%20Tracker/record_Tracker.dart';
import 'package:carbon_footprint/View/Introducttion%20To%20The%20App/start.dart';

import 'package:carbon_footprint/View/Introducttion%20To%20The%20App/intro1.dart';
import 'package:carbon_footprint/View/Product%20Page/Types%20of%20Information/waterfootPrint.dart';
import 'package:flutter/material.dart';


import '../View/Splash Screen Related/splash_screen.dart';
import '../View/read_more.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashscreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case RoutesName.IntroductionToapp:
        return MaterialPageRoute(builder: (context) => IntroductionToApp());

      case RoutesName.starting:
        return MaterialPageRoute(builder: (context) => Starting());

      case RoutesName.introducing2:
        return MaterialPageRoute(builder: (context) => Introducing2());

      case RoutesName.introducing3:
        return MaterialPageRoute(builder: (context) => Introducing3());

      case RoutesName.mobileNOLogin:
        return MaterialPageRoute(builder: (context) => MobileLoginOtp());

      case RoutesName.emailLogin:
        return MaterialPageRoute(builder: (context) => Email_Login_Otp());

      case RoutesName.homepage:
        return MaterialPageRoute(builder: (context) => HomePage());

      case RoutesName.articlePage:
        return MaterialPageRoute(builder: (context) => ArticlePage());

      case RoutesName.carbonFootprint:
        return MaterialPageRoute(builder: (context) => CarbonDetails());

      case RoutesName.waterfootPrint:
        return MaterialPageRoute(builder: (context) => WaterDetails());

      case RoutesName.searchresult:
        return MaterialPageRoute(builder: (context) => SearchPage());

      case RoutesName.education:
        return MaterialPageRoute(builder: (context) => EducationalResources());

      case RoutesName.tracker:
        return MaterialPageRoute(builder: (context) => Tracker());

      case RoutesName.readmore:
        return MaterialPageRoute(builder: (context) => ReadMore());

      case RoutesName.waterReadmore:
        return MaterialPageRoute(builder: (context) => ReadmoreWater());

      case RoutesName.countribution:
        return MaterialPageRoute(builder: (context) => ContributionScreen());

      case RoutesName.galeryImage:
        return MaterialPageRoute(builder: (context) => GalleryImagePick());

      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(child: Text('No route defind')),
          );
        }
        );
    }
  }
}
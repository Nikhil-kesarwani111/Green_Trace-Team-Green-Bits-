
import 'package:carbon_footprint/Navigations/routes_name.dart';
import 'package:carbon_footprint/View/AlternativesCarbon.dart';
import 'package:carbon_footprint/View/Alternatives_water.dart';
import 'package:carbon_footprint/View/ArticleDetail.dart';
import 'package:carbon_footprint/View/Enter_Otp.dart';
import 'package:carbon_footprint/View/HomeDrawer.dart';
import 'package:carbon_footprint/View/Mobile_login.dart';
import 'package:carbon_footprint/View/ProductPage.dart';
import 'package:carbon_footprint/View/Scanner.dart';
import 'package:carbon_footprint/View/SearchResuilt.dart';
import 'package:carbon_footprint/View/carbonFootPrint.dart';
import 'package:carbon_footprint/View/drawer.dart';
import 'package:carbon_footprint/View/email_login.dart';
import 'package:carbon_footprint/View/home.dart';
import 'package:carbon_footprint/View/intro2.dart';
import 'package:carbon_footprint/View/intro3.dart';
import 'package:carbon_footprint/View/read_more.dart';
import 'package:carbon_footprint/View/readmoreWater.dart';
import 'package:carbon_footprint/View/record_Tracker.dart';
import 'package:carbon_footprint/View/share.dart';
import 'package:carbon_footprint/View/start.dart';
import 'package:carbon_footprint/View/splash_screen.dart';
import 'package:carbon_footprint/View/intro1.dart';
import 'package:carbon_footprint/View/waterfootPrint.dart';
import 'package:flutter/material.dart';

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

      case RoutesName.enterotp:
        return MaterialPageRoute(builder: (context) => EnterOTP());

      case RoutesName.homepage:
        return MaterialPageRoute(builder: (context) => HomePage());

      case RoutesName.drawerPage:
        return MaterialPageRoute(builder: (context) => DrawerPage());

      case RoutesName.homedrawer:
        return MaterialPageRoute(builder: (context) => HomeDrawer());

      case RoutesName.articlePage:
        return MaterialPageRoute(builder: (context) => ArticlePage());

      case RoutesName.WaterAlternatives:
        return MaterialPageRoute(builder: (context) => AlternatesWater());

      case RoutesName.Carbonalternatives:
        return MaterialPageRoute(builder: (context) => AlternativesCarbon());

      case RoutesName.carbonFootprint:
        return MaterialPageRoute(builder: (context) => CarbonDetails());

      case RoutesName.waterfootPrint:
        return MaterialPageRoute(builder: (context) => WaterDetails());

      case RoutesName.scanner:
        return MaterialPageRoute(builder: (context) => ScannerPage());

      case RoutesName.searchresult:
        return MaterialPageRoute(builder: (context) => SearchPage());

      case RoutesName.productpage:
        return MaterialPageRoute(builder: (context) => ProductPage());

      case RoutesName.tracker:
        return MaterialPageRoute(builder: (context) => Tracker());

      case RoutesName.readmore:
        return MaterialPageRoute(builder: (context) => ReadMore());

      case RoutesName.waterReadmore:
        return MaterialPageRoute(builder: (context) => ReadmoreWater());

      case RoutesName.share:
        return MaterialPageRoute(builder: (context) => Share());

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
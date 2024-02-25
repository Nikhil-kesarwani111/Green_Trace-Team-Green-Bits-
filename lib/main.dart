import 'package:carbon_footprint/Navigations/routes.dart';
import 'package:carbon_footprint/Navigations/routes_name.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid ?
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCipIgTw7uJlBxltbwSvbLgG194DGmBVCM",
          appId: "1:17088251352:android:1e0555b31cb5078d21dead",
          messagingSenderId: "17088251352",
          projectId:"green-trace-c76ad",
          storageBucket: "green-trace-c76ad.appspot.com",
      )
  )
      :await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffFBF6EE),),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.splashscreen,
      onGenerateRoute:Routes.generateRoute,
    );
  }
}


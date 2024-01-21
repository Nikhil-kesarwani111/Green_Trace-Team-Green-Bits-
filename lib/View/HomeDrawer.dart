import 'package:carbon_footprint/Navigations/routes_name.dart';
import 'package:carbon_footprint/View/drawer.dart';
import 'package:carbon_footprint/View/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return            Scaffold(
      backgroundColor: Colors.white,
      body: ZoomDrawer(
                           //controller: ZoomDrawerController,
                            duration: Duration(milliseconds: 600),
            style: DrawerStyle.defaultStyle,
            mainScreen: HomePage(),
            menuScreen: DrawerPage(),
            borderRadius: 20.0,
            showShadow: true,
            angle: -9,
            drawerShadowsBackgroundColor: Colors.green,
            slideWidth: MediaQuery.of(context).size.width*.80,
            openCurve: Curves.fastOutSlowIn,
            closeCurve: Curves.bounceIn,
          ),
    );
  }
}

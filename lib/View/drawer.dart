import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
           body:  Container(
             height:600,
             width: 800,
             decoration: BoxDecoration(
               image: DecorationImage(
         //        colorFilter: ColorFilter.mode(Colors.black87,BlendMode.screen),


                 image: AssetImage('images/profile2.jpg'),
             fit :BoxFit.fitHeight,
               ),
             ),
           ),
    );
  }
}

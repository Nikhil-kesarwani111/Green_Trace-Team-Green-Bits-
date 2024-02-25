import 'package:carbon_footprint/Backend/Utils/Utils.dart';
import 'package:carbon_footprint/Navigations/routes_name.dart';
import 'package:carbon_footprint/View/ArticleDetail.dart';
import 'package:carbon_footprint/View/Home%20Page/Main%20Page%20Or%20Front%20Page/SpScreen.dart';
import 'package:carbon_footprint/View/Home%20Page/Main%20Page%20Or%20Front%20Page/hindi.dart';
import 'package:carbon_footprint/View/Introducttion%20To%20The%20App/intro1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<String> _image=[

    'images/pexels-photo-2583835.jpeg.jpg',
    'images/pexels-photo-4381308.jpeg.jpg',
    'images/pexels-photo-929385.jpeg.jpg',
    'images/1_vUUZW-r-ZmzcuC5fUwKLhA (1).jpg',
    'images/desert-drought-dehydrated-clay-soil-60013.jpeg.jpg',
    'images/img.png',


  ];



Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  final  auth =FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async{
        SystemNavigator.pop();
        return true ;
      },
      child: Scaffold(
        backgroundColor: Color(0xffe3efe3),
        appBar: AppBar(


          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
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
            SizedBox(width: 53,),
            PopupMenuButton(
                child:   Image(
                  height: 40,
                  width: 40,
                  image: AssetImage('images/pngwing.com (1).png'),
                ),
                itemBuilder: (context)=>[
                  PopupMenuItem(
                    child: InkWell(
                        onTap: (){

                        },
                        child: Text('English')),
                    value: 1,),
                  PopupMenuItem(
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>SpScrren()));
                        },
                        child: Text('Español ')),
                    value: 2,),
                  PopupMenuItem(
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>HScreen()));
                        },
                        child: Text('हिंदी')),
                    value: 3,),
                  PopupMenuItem(
                    child: Text('Français'),
                    value: 3,),
                  PopupMenuItem(
                    child: Text('русский'),
                    value: 3,),
                  PopupMenuItem(
                    child: Text('中文'),
                    value: 3,),
                  PopupMenuItem(
                    child: Text('한국어'),
                    value: 3,),
                ]
            ),

            SizedBox(width: 10,),
          ],

          backgroundColor: Color(0xffFBF6EE),
        ),

        drawer:  Drawer(

          elevation: 10, // Adjust elevation as needed
          child: Container(
            color: Colors.white,

            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color:  Color(0xffC1FFC0),
                  ),

                  accountName: Text('Naina ',style: GoogleFonts.poppins(color:Colors.green.shade900,fontSize: 14,fontWeight: FontWeight.w700),),
                  accountEmail: Text('naina354@gmail.com',style: GoogleFonts.poppins(color:Colors.green.shade900,fontSize: 14,fontWeight: FontWeight.w400),),
                  currentAccountPicture:  CircleAvatar(
                    minRadius: 50,
                    backgroundColor:Color(0xffFBF6EE),
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg')
                    ,
                  ),

                ),
                ListTile(
                  leading: Icon(CupertinoIcons.house_fill,color: Colors.black,size: 30,),
                  title:Text('Home ',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: Icon(Icons.person,color: Colors.black,size: 33,),
                  title: Text('Profile ',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.gear_solid,color: Colors.black,size: 30,),
                  title: Text('Settings ',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.person_3_fill,color: Colors.black,size: 30,),
                  title: Text('Countribute',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.countribution);

                  },
                ),
                ListTile(
                  leading:   Icon(CupertinoIcons.book_fill,color: Colors.black,size: 30,),
                  title: Text('Educational Resourses ',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                  onTap: () {
                    Navigator.pushNamed(context,RoutesName.education);
                  },
                ),

      ListTile(
        leading:   Icon(CupertinoIcons.gift_fill,color: Colors.black,size: 30,),
        title: Text('Rewards ',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
        onTap: () {

        },
      ),

                ListTile(
                  leading: Icon(CupertinoIcons.question_square_fill,color: Colors.black,size: 30,),
                  title: Text('Any Issue ',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout_outlined,color: Colors.black,size: 30,),
                  title: Text('Log Out ',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                  onTap: () {onPressed: () {
                    auth.signOut().then((value) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Starting()));
                    }).onError((error, stackTrace) {
                      Utils().toastMessage(error.toString());
                    });
                  };

                  },
                ),
                // Add more list items as needed
              ],
            ),
          ),
        ),
        body: Column(

          children: [

            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8,vertical: 10),

                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.searchresult);
                      },
                      child:Container(
                        height: 45,
                        // color: Colors.grey.shade100,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(40),

                          border:Border.all(
                            color :Colors.green,
                          ),

                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 19,),
                            Icon(CupertinoIcons.search,color: Colors.grey,size: 30,),
                            SizedBox(width: 9,),
                            Text('Type Product name',style: TextStyle(color: Colors.grey),)
                          ],
                        ),

                      ),
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context,index){
                          return  Column(
                            children: [

                              Stack(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(right: 127,top: 65),
                                    child: RichText(
                                      text: TextSpan(
                                          text:  'Hello, Naina !',style: GoogleFonts.poppins(color:Colors.black,fontSize: 24,fontWeight: FontWeight.w700),
                                          children: [
                                            TextSpan(
                                              text:'\nWhat do you wanna know today?',style: GoogleFonts.poppins(color:Colors.grey.shade900,fontSize: 14,fontWeight: FontWeight.w400),

                                            ),


                                          ]
                                      ),
                                      //
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8,top: 140),
                                    child: Text(
                                      '\nSustainable path for a better tomorrow',style: GoogleFonts.poppins(color:Colors.green.shade900,fontSize: 14,fontWeight: FontWeight.w500),

                                    ),
                                  ),
                                  //      SizedBox(width: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 200),
                                    child: Image(
                                      height: 160,
                                      width: 160,
                                      image: AssetImage('images/homeimage2.png'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:7),
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: 380.0,

                                    aspectRatio: 16/9,
                                    viewportFraction: 0.7,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: true,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 2),
                                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.3,
                                    onPageChanged: (index,reason){

                                    },
                                    scrollDirection: Axis.horizontal,
                                  ),
                                  items: _image.map((e) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return InkWell(
                                          onTap:(){

                                            Navigator.push(context, PageTransition(type: PageTransitionType.scale,alignment: Alignment.center, duration: Duration(milliseconds: 500), child: ArticlePage()));
                                          },
                                          child: Column(
                                              children: [

                                                Center(
                                                  child: Container(
                                                    height: 320,
                                                    width: 240,
                                                    child: Stack(
                                                      children: [
                                                        Expanded(flex:4,child: Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(20),

                                                            image: DecorationImage(
                                                              image: AssetImage(e),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          //color: Colors.redAccent,
                                                        )),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top:100.0),
                                                          child: Expanded(flex:1,child: Container(
                                                            decoration: BoxDecoration(
                                                              gradient: LinearGradient(
                                                                colors: [Colors.black, Colors.transparent],
                                                                begin: Alignment.bottomCenter,
                                                                end: Alignment.topCenter,
                                                              ),
                                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                                            ),
                                                          )),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 260.0,left: 10,right: 10),
                                                          child: RichText(
                                                            text: TextSpan(
                                                                text:  'Climate change is getting worst day by day ',style: GoogleFonts.poppins(color:Colors.white,fontSize: 12,fontWeight: FontWeight.w400),
                                                                children: [
                                                                  TextSpan(
                                                                    text:'Read More ...',style: GoogleFonts.poppins(color:Colors.lightBlue,fontSize: 12,fontWeight: FontWeight.w400),

                                                                  )
                                                                ]
                                                            ),
                                                            //
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      border:Border.all(
                                                        color :Colors.white,
                                                        width: 3,
                                                      ),


                                                    ),
                                                  ),
                                                ),

                                              ]
                                          ),
                                        );
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),

                            ],
                          ) ;
                        }
                    ),
                  ),
                ],
              ),
            ),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color(0xffFBF6EE),
                      borderRadius: BorderRadius.circular(24),
                      border:Border.all(
                        color :Colors.white,
                        width: 3,
                      ),
                    ),
                    child: Material(

                      borderRadius: BorderRadius.circular(24),
                      color:   Color(0xffe3efe3),
                      //borderOnForeground:true ,
                      //surfaceTintColor: Colors.blue,
                      elevation: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 15,),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, RoutesName.share);
                              },
                              child: Icon(CupertinoIcons.gift_fill,color: Colors.black,size: 30,)),
                          SizedBox(width: 22,),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context,RoutesName.education);
                            },
                            child:Center(child: Icon(CupertinoIcons.book_fill,color: Colors.black,size: 30,)),),
                          SizedBox(width: 122,),
                          InkWell(
                              onTap: (){
                                print('go out');
                                _launchURL('https://google.com');
                                // Navigator.pushNamed(context, RoutesName.drawerPage);
                              },
                              child: Icon(CupertinoIcons.square_favorites_alt_fill,color: Colors.black,size: 33,)),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){

                              Navigator.pushNamed(context, RoutesName.tracker);
                            },
                            child: const Image(
                              height: 30,
                              width: 60,
                              image: AssetImage('images/carbon logo tracker.png'),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ),

             //   SizedBox(width: 70,),
                Center(
                  child: CircleAvatar(

                    backgroundColor: Colors.white,
                    radius: 36,
                    child: CircleAvatar(
                      backgroundColor: Colors.greenAccent[100],
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor:Color(0xffFBF6EE),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor:Color(0xffFBF6EE),
                          child: InkWell(
                              onTap: (){
                                showDialog(
                                    context: context,
                                    builder: (context)=>SimpleDialog(
                                      backgroundColor:   Colors.white,
                                      elevation: 12,
                                      title: Center(child: Text('Important Information ',style: GoogleFonts.poppins(color:Colors.red,fontSize: 14,fontWeight: FontWeight.w500),)),
                                      contentPadding: EdgeInsets.all(10),
                                      children: [

                                        Column(children: [
                                          RichText(
                                            textAlign: TextAlign.justify,
                                            //  textAlign: Alignment.topStart,
                                            text: TextSpan(

                                                text:'The image should be clear ',style: GoogleFonts.poppins(color:Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),
                                                children: [
                                                  TextSpan(
                                                    text:'and make sure only',style: GoogleFonts.poppins(color:Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),

                                                  ),
                                                  TextSpan(
                                                    text:'   one object is being scanned at a time.',style: GoogleFonts.poppins(color:Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),

                                                  )
                                                ]
                                            ),
                                            //
                                          ),

                                        ],),
                                        TextButton(onPressed: (){
                                          Navigator.pushNamed(context, RoutesName.galeryImage);
                                        }, child: Text('Ok ',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),)
                                      ],
                                    ));

                              },
                              child: Image.asset('images/scanner.png'))
                          ,
                        ),
                        radius: 100,
                      ), //CircleAvatar
                    ), //CircleAvatar
                  ),
                ),


              ],
            ),


          ],
        ),

      ),
    );

  }

}




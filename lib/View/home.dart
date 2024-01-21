import 'package:carbon_footprint/Navigations/routes_name.dart';
import 'package:carbon_footprint/View/ArticleDetail.dart';
import 'package:carbon_footprint/View/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final zoomDrawerController = ZoomDrawerController();

  List<String> _image=[

    'images/pexels-photo-2583835.jpeg.jpg',
    'images/pexels-photo-4381308.jpeg.jpg',
    'images/pexels-photo-929385.jpeg.jpg',
    'images/1_vUUZW-r-ZmzcuC5fUwKLhA (1).jpg',
    'images/desert-drought-dehydrated-clay-soil-60013.jpeg.jpg',
    'images/img.png',


  ];


  final Map<String, String> _imagesMap = {
    '1' : 'Hello',
    '2' : 'hi',
    '3' : 'Prince',
    '4' :  'Kumar'

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3efe3),  // Color(0xffFBF6EE),
      appBar: AppBar(
               actions: [
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
                 SizedBox(width: 53,),
                 Image(
                   height: 40,
                   width: 40,
                   image: AssetImage('images/pngwing.com (1).png'),
                 ),
               //  Icon(CupertinoIcons.square_favorites_alt_fill,color: Colors.black87,size: 40,),
                 SizedBox(width: 10,),
               ],

             leading: IconButton(
               onPressed: (){
                 zoomDrawerController.toggle?.call();
               },
               icon: Icon(Icons.menu_rounded,size: 28,),
             ),
         automaticallyImplyLeading: false,
          backgroundColor: Color(0xffFBF6EE),
      ),
      body: Column(

        children: [


          // Container(
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage('images/3d-environment-project-scene.jpg'),
          //         fit :BoxFit.fitHeight,
          //       ),
          //   ),



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
                        boxShadow: [
// BoxShadow(
//   color: Colors.green.shade300,
//   offset: Offset(0,5),
//   blurRadius: 15,
//
// )
                        ],
                        border:Border.all(
                          color :Colors.green,
// width: 10,
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

                Stack(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(right: 127,top: 65),
                      child: RichText(
                        text: TextSpan(
                            text:  'Hello, Nikhil !',style: GoogleFonts.poppins(color:Colors.black,fontSize: 24,fontWeight: FontWeight.w700),
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
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                      itemBuilder: (context,index){
                        return  Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:7),
                              child: CarouselSlider(
                               // disableGesture: true,
                              //   items:[
                              //     ClipRRect(child: Image.asset(_image[0]),),
                              //     ClipRRect(child: Image.asset(_image[1]),),
                              //     ClipRRect(child: Image.asset(_image[2]),),
                              //     ClipRRect(child: Image.asset(_image[3]),),
                              //     ClipRRect(child: Image.asset(_image[4]),),
                              //     ClipRRect(child: Image.asset(_image[5]),),
                              // ],
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

                                            // Container(
                                            //   height: 250,
                                            //   width: 240,
                                            //   decoration: BoxDecoration(
                                            //     //   borderRadius: BorderRadius.circular(20),
                                            //     boxShadow: [
                                            //       // BoxShadow(
                                            //       //   color: Colors.green,
                                            //       //   blurRadius: 500,
                                            //       //   blurStyle: BlurStyle.outer,
                                            //       //
                                            //       // )
                                            //     ],
                                            //     border:Border.all(
                                            //       color :Colors.white,
                                            //       width: 5,
                                            //     ),
                                            //
                                            //
                                            //   ),
                                            // ),
                                            // Container(
                                            //   height: 60,
                                            //   width: 240,
                                            //   decoration: BoxDecoration(
                                            //     //   borderRadius: BorderRadius.circular(20),
                                            //     boxShadow: [
                                            //       // BoxShadow(
                                            //       //   color: Colors.green,
                                            //       //   blurRadius: 500,
                                            //       //   blurStyle: BlurStyle.outer,
                                            //       //
                                            //       // )
                                            //     ],
                                            //     border:Border.all(
                                            //       color :Colors.white,
                                            //       width: 5,
                                            //     ),
                                            //
                                            //
                                            //   ),
                                            // ),

                                            Center(
                                            child: Container(
                                              height: 320,
                                              width: 240,
                                              child: Stack(
                                                children: [
                                                  Expanded(flex:4,child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),

                                                      boxShadow: [
                                                        // BoxShadow(
                                                        //   color: Colors.green,
                                                        //   blurRadius: 500,
                                                        //   blurStyle: BlurStyle.outer,
                                                        //
                                                        // )
                                                      ],


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
                                                        boxShadow: [
                                                          // BoxShadow(
                                                          //   color: Colors.green,
                                                          //   blurRadius: 500,
                                                          //   blurStyle: BlurStyle.outer,
                                                          //
                                                          // )
                                                        ],


                                                        // image: DecorationImage(
                                                        //   image: AssetImage(e),
                                                        //   fit: BoxFit.cover,
                                                        // ),
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
                                                boxShadow: [
                                                  // BoxShadow(
                                                  //   color: Colors.green,
                                                  //   blurRadius: 500,
                                                  //   blurStyle: BlurStyle.outer,
                                                  //
                                                  // )
                                                ],
                                                border:Border.all(
                                                  color :Colors.white,
                                                  width: 3,
                                                ),

                                                // image: DecorationImage(
                                                //   image: AssetImage(e),
                                                //   fit: BoxFit.cover,
                                                // ),
                                              ),
                                            ),
                                          ),
                                            // Column(
                                            //   mainAxisAlignment: MainAxisAlignment.end,
                                            //   children: [
                                            //     // Center(
                                            //     //   child: Padding(
                                            //     //     padding: const EdgeInsets.only(bottom: 20.0),
                                            //     //     child: Container(
                                            //     //       width: 235,
                                            //     //       height:30,
                                            //     //       child: Center(
                                            //     //         // child: Row(
                                            //     //         //   children: [
                                            //     //         //     SizedBox(width: 20,),
                                            //     //         //     Padding(
                                            //     //         //       padding: const EdgeInsets.symmetric(vertical: 8.0),
                                            //     //         //       child: Icon(CupertinoIcons.paperplane_fill,size: 20,color: Colors.red.shade400,),
                                            //     //         //     ),
                                            //     //         //     SizedBox(width: 20,),
                                            //     //         //    Text('hello'),
                                            //     //         //     SizedBox(width: 20,),
                                            //     //         //
                                            //     //         //   ],
                                            //     //         // ),
                                            //     //       ),
                                            //     //       decoration: BoxDecoration(
                                            //     //         color: Color(0xffFBF6EE),
                                            //     //         borderRadius: BorderRadius.circular(20),
                                            //     //         boxShadow: [
                                            //     //           BoxShadow(
                                            //     //             color: Colors.grey,
                                            //     //             offset: Offset(2,2),
                                            //     //             //  blurRadius: 1,
                                            //     //
                                            //     //           )
                                            //     //         ],
                                            //     //         border:Border.all(
                                            //     //           color :Colors.green.shade100,
                                            //     //           width: 1,
                                            //     //         ),
                                            //     //
                                            //     //       ),
                                            //     //     ),
                                            //     //   ),
                                            //     // ),
                                            //   ],
                                            // ),

                                          ]
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(28.0),
                            //   child: RichText(
                            //     text: TextSpan(
                            //
                            //         text:  'Welcome to the ',style: GoogleFonts.pottaOne(color:Colors.black,fontSize: 38,fontWeight: FontWeight.w400),
                            //         children: [
                            //           TextSpan(
                            //             text:'Green',style: GoogleFonts.pottaOne(color:Colors.green,fontSize: 38,fontWeight: FontWeight.w400),
                            //
                            //           ),
                            //           TextSpan(
                            //             text:'Trace',style: GoogleFonts.pottaOne(color:Colors.black,fontSize: 38,fontWeight: FontWeight.w400),
                            //
                            //           )
                            //         ]
                            //     ),
                            //     //
                            //   ),
                            // ),
                          ],
                        ) ;
                      }
                  ),
                ),
              ],
            ),
          ),
          // Material(
          //   elevation: 2,
          //   child: Container(
          //     height: 3,
          //     color: Colors.red,
          //   ),
          // ),


          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                child: Container(
                  height: 65,
                       decoration: BoxDecoration(
                           color: Color(0xffFBF6EE),
                           borderRadius: BorderRadius.circular(24),
                          // boxShadow: [
                         //     BoxShadow(
                         //        color: Colors.green,
                         //       offset: Offset(2,2),
                         // //  blurRadius: 1,
                         //
                         //     )
                         //   ],
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
                        children: [
                          SizedBox(width: 35,),
                          Icon(CupertinoIcons.house_fill,color: Colors.black,size: 30,),
                          SizedBox(width: 22,),
                          Icon(CupertinoIcons.book,color: Colors.black,size: 30,),
                           SizedBox(width: 122,),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, RoutesName.drawerPage);
                              },
                              child: Icon(CupertinoIcons.person,color: Colors.black,size: 30,)),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, RoutesName.tracker);
                            },
                            child: Image(
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

              SizedBox(width: 60,),
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
                                   Navigator.pushNamed(context, RoutesName.scanner);
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
      
    );

  }

}




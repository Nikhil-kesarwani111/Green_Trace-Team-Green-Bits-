import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Navigations/routes_name.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isSave = false;
  bool sowMore = false;
  bool showMoreCarbon = false;
  bool recycle=false;

  void toggledSave(){
    setState(() {
      isSave = !isSave;

    });
  }

  void toggledMore(){
    setState(() {
      sowMore = !sowMore;

    });
  }

  void toggledMorerecycle(){
    setState(() {
      recycle= !recycle;

    });
  }

  void toggledMoreCarbon(){
    setState(() {
      showMoreCarbon = !showMoreCarbon;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Color(0xffC1FFC0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
          SizedBox(width: 70,),
       //   Icon(CupertinoIcons.square_favorites_alt,color: Colors.black,size: 25),
          SizedBox(width: 30,),
        ],



      //  backgroundColor: Color(0xffFBF6EE),
      ),
      body: CustomScrollView(
        slivers:<Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: false,
            floating: true,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background:Stack(
                  children: [

                    Container(
                      color:  Color(0xffC1FFC0),
                      width: double.infinity,
                      height:400,
                      child:Expanded(
                        child: Center(
                          child: Image(

                            image: AssetImage('images/10-2-jeans-picture.png'),

                          ),
                        ),
                      ),

                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.share);
                      },
                    //  onTap: toggledSave,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 330),
                        child:Icon(Icons.share_rounded,color: Colors.black,size: 30,)
                      ),
                    ),
                  ]
              ),

            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(

                      (context, index)
              {
                return

                       Column(
                        children: [

                          Container(

                            decoration: BoxDecoration(  color:Color(0xffFFFFFF),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green.shade100,
                                  offset: Offset(0,2),
                                  //  blurRadius: 2,

                                )
                              ],
                              // border:Border.all(
                              //   color :Colors.green.shade200,
                              //    width: 2,
                              // ),

                            ),

                            child: Column(

                              children: [
                                SizedBox(height: 10,),
                                Container(
                                  width: 60,
                                  height: 6,

                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      // BoxShadow(
                                      //   color: Colors.grey,
                                      //   offset: Offset(2,2),
                                      //
                                      //   blurRadius: 1,
                                      //
                                      // )
                                    ],
                                    border:Border.all(
                                      color : Color(0xffFBF6EE),
                                      width: 1,
                                    ),

                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 25),
                                  child: Container(
                                    width: double.infinity,
                                    height:100,
                                    child: Row(

                                      children: [
                                    //    SizedBox(width: 35,),
                                        Text('Jeans',style: GoogleFonts.poppins(color:Colors.black
                                            ,fontSize: 20,fontWeight: FontWeight.w600) ,),
                                        SizedBox(width: 138,),
                                        // Container(
                                        //   width: 130,
                                        //   height: 31,
                                        //   child: Center(
                                        //     child: Row(
                                        //       children: [
                                        //         SizedBox(width: 20,),
                                        //         Text('Ree',style: GoogleFonts.poppins(color:Colors.white
                                        //             ,fontSize: 14,fontWeight: FontWeight.w400) ,),
                                        //         SizedBox(width: 7,),
                                        //         Icon(Icons.arrow_drop_down,color: Colors.black,size: 18,),
                                        //       ],
                                        //     ),
                                        //   ),
                                        //   decoration: BoxDecoration(
                                        //     color: Colors.green,
                                        //     borderRadius: BorderRadius.circular(8),
                                        //     boxShadow: [
                                        //       BoxShadow(   color: Color(0xffe3efe3),
                                        //         offset: Offset(0,2),
                                        //
                                        //         blurRadius: 1,
                                        //
                                        //       )
                                        //     ],
                                        //     // border:Border.all(
                                        //     //   color : Color(0xffFBF6EE),
                                        //     //   width: 1,
                                        //     // ),
                                        //
                                        //   ),
                                        // ),
                                      ],
                                    ),

                                    // decoration: BoxDecoration(
                                    //   color: Color(0xffFBF6EE),
                                    //   borderRadius: BorderRadius.circular(8),
                                    //   boxShadow: [
                                    //     BoxShadow(
                                    //       color: Colors.green.shade200,
                                    //       offset: Offset(2,2),
                                    //       //  blurRadius: 1,
                                    //
                                    //     )
                                    //   ],
                                    //   border:Border.all(
                                    //     color :Colors.green.shade100,
                                    //     // width: 10,
                                    //   ),
                                    //
                                    // ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                  child: Container(
                                    // width: 169,
                                    height:showMoreCarbon? 200 : 75,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 25),
                                                child: Image.asset('images/co2.png'),
                                              ),
                                              //  SizedBox(width: 1,),

                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 15),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('80 Kg',style: GoogleFonts.poppins(color:Colors.black
                                                        ,fontSize: 14,fontWeight: FontWeight.w600) ,),
                                                    //  SizedBox(height: 2,),
                                                    Text('Carbon Footprints',style: GoogleFonts.poppins(color:Colors.black54
                                                        ,fontSize: 14,fontWeight: FontWeight.w500) ,),
                                                  ],
                                                ),
                                              ),

                                              SizedBox(width: 1),
                                              InkWell(
                                                onTap:toggledMoreCarbon,
                                                child:  Container(

                                                    child: showMoreCarbon? Icon(Icons.expand_less_rounded):Icon(Icons.expand_more_rounded)),),
                                            ],
                                          ),
                                        ),
                                        if(showMoreCarbon)
                                          Expanded(
                                              flex: 2,child: Container(
                                           child: Padding(
                                             padding: const EdgeInsets.all(8.0),
                                             child: InkWell(
                                               onTap: (){
                                                 Navigator.pushNamed(context, RoutesName.readmore);
                                               },
                                               child: RichText(
                                                 textAlign: TextAlign.justify,
                                                 //  textAlign: Alignment.topStart,
                                                  text: TextSpan(

                                                      text:  'Denim, once rebellious, now battles environmental impact. Production consumes 7,600 liters per pair. Eco-friendly brands like Levi\'s pioneer water-saving techniques, making greener jeans affordable.',style: GoogleFonts.poppins(color:Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),
                                                      children: [
                                                        TextSpan(
                                                          text:'  Read more',style: GoogleFonts.poppins(color:Colors.blue.shade700,fontSize: 14,fontWeight: FontWeight.w400),

                                                        )
                                                      ]
                                                  ),
                                                  //
                                                ),
                                             ),
                                           ),
                                          ))
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3efe3),
                                      borderRadius: BorderRadius.circular(35),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green.shade100,
                                          offset: Offset(0,2),
                                          //  blurRadius: 2,

                                        )
                                      ],
                                      // border:Border.all(
                                      //   color :Colors.green.shade200,
                                      //    width: 2,
                                      // ),

                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                  child: Container(
                                    // width: 169,
                                    height:sowMore? 200 : 75,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 25),
                                                child: Image.asset('images/4fa8ccd95866db239face1f4749df505.png'),
                                              ),
                                              //  SizedBox(width: 1,),

                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 15),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('1500 Liters',style: GoogleFonts.poppins(color:Colors.black
                                                        ,fontSize: 14,fontWeight: FontWeight.w600) ,),
                                                    //  SizedBox(height: 2,),
                                                    Text('Water Footprints',style: GoogleFonts.poppins(color:Colors.black54
                                                        ,fontSize: 14,fontWeight: FontWeight.w500) ,),
                                                  ],
                                                ),
                                              ),

                                              SizedBox(width: 11,),
                                              InkWell(
                                                onTap:toggledMore,
                                                child:  Container(

                                                    child: sowMore? Icon(Icons.expand_less_rounded):Icon(Icons.expand_more_rounded)),),
                                            ],
                                          ),
                                        ),
                                        if(sowMore)
                                          Expanded(
                                              flex: 2,child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: InkWell(
                                                onTap: (){
                                                  Navigator.pushNamed(context, RoutesName.waterReadmore);
                                                },
                                                child: RichText(
                                                  textAlign: TextAlign.justify,
                                                  text: TextSpan(
                                                      text:  ' Denim, a fashion staple, has a substantial carbon footprint. Opt for sustainable options, like secondhand or eco-friendly brands, to reduce impact.',style: GoogleFonts.poppins(color:Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),
                                                      children: [
                                                        TextSpan(
                                                          text:'  Read more',style: GoogleFonts.poppins(color:Colors.blue.shade700,fontSize: 14,fontWeight: FontWeight.w400),

                                                        )
                                                      ]
                                                  ),
                                                  //
                                                ),
                                              ),
                                            ),
                                          ))
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3efe3),
                                      borderRadius: BorderRadius.circular(35),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green.shade100,
                                          offset: Offset(0,2),
                                          //  blurRadius: 2,

                                        )
                                      ],
                                      // border:Border.all(
                                      //   color :Colors.green.shade200,
                                      //    width: 2,
                                      // ),

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                  child: Container(
                                    // width: 169,
                                    height:recycle? 220 : 75,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 40.0),
                                                child: Image(
                                                  height: 32,
                                                  width: 32,
                                                  image: AssetImage('images/recycle.png'),
                                                ),
                                              ),
                                              //  SizedBox(width: 1,),
                                              SizedBox(width: 42,),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 15),
                                              child:  RichText(
                                                  text: TextSpan(
                                                      text:  'Recycling',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w600),
                                                      children: [
                                                        TextSpan(
                                                          text:'  information',style: GoogleFonts.poppins(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w600),

                                                        )
                                                      ]
                                                  ),
                                                  //
                                                ),
                                              ),

                                              SizedBox(width: 13,),
                                              InkWell(
                                                onTap:toggledMorerecycle,
                                                child:  Container(

                                                    child: recycle? Icon(Icons.expand_less_rounded):Icon(Icons.expand_more_rounded)),),
                                            ],
                                          ),
                                        ),
                                        if(recycle)
                                          Expanded(
                                              flex: 2,child: Container())
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3efe3),
                                      borderRadius: BorderRadius.circular(35),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green.shade100,
                                          offset: Offset(0,2),
                                          //  blurRadius: 2,

                                        )
                                      ],
                                      // border:Border.all(
                                      //   color :Colors.green.shade200,
                                      //    width: 2,
                                      // ),

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                                  child: Container(
                                    height: 65,
                                    decoration: BoxDecoration(
                                      color:  Colors.green.shade300,
                                      borderRadius: BorderRadius.circular(35),
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

                                      borderRadius: BorderRadius.circular(35),
                                      color:  Color(0xffC1FFC0),

                                      //borderOnForeground:true ,
                                      //surfaceTintColor: Colors.blue,
                                      elevation: 12,
                                      child: Row(
                                        children: [
                                          SizedBox(width: 30,),

                                          InkWell(
                                            onTap: (){
                                              Navigator.pushNamed(context, RoutesName.tracker);
                                            },
                                            child: Row(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                      text:  'Record',style: GoogleFonts.poppins(color:Colors.black87,fontSize: 14,fontWeight: FontWeight.w600),
                                                      children: [
                                                        TextSpan(
                                                          text:'  Emission',style: GoogleFonts.poppins(color:Colors.black87,fontSize: 14,fontWeight: FontWeight.w600),

                                                        )
                                                      ]
                                                  ),
                                                  //
                                                ),
                                             //   Icon(Icons.fiber_manual_record_rounded,color: Colors.red,size: 10,),
                                              ],
                                            ),
                                          ),

                                          SizedBox(width: 60,),
                                          // InkWell(
                                          //     onTap: (){
                                          //       Navigator.pushNamed(context, RoutesName.scanner);
                                          //     },
                                          //     child: Icon(Icons.camera,color: Colors.black,size: 30,)),
                                           SizedBox(width: 75,),
                                          InkWell(

                                            child: Image(
                                              height: 30,
                                              width: 60,
                                              image: AssetImage('images/scanner.png'),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),

                                ),
                                Container(
                                  height: 10,
                                )
                              ],
                            ),
                          ),



                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                          //   child: Container(
                          //     width: double.infinity,
                          //     height:sowMore? 200 :100,
                          //     child: Column(
                          //       children: [
                          //         Expanded(
                          //           flex: 1,
                          //           child: Center(
                          //             child: Row(
                          //               children: [
                          //                 Padding(
                          //                   padding: const EdgeInsets.symmetric(vertical: 5.0),
                          //                   child: Container(
                          //                       height:80,
                          //                       width:80,
                          //                       child: Image.asset('images/4fa8ccd95866db239face1f4749df505.png')),
                          //                 ),
                          //                 Text('Water Footprints',style: GoogleFonts.poppins(color:Colors.black
                          //                     ,fontSize: 24,fontWeight: FontWeight.w600) ,),
                          //                 SizedBox(width: 20,),
                          //                 InkWell(
                          //                   onTap:toggledMore,
                          //                   child:  Padding(
                          //                       padding: const EdgeInsets.all(8.0),
                          //                       child: Container(
                          //                         height : 22,
                          //                         width :32,
                          //                         child:sowMore?  Icon(Icons.expand_less_rounded): Icon(Icons.expand_more_rounded),
                          //                         // Image.asset('images/33884_down-arrow-png.png')
                          //                       )
                          //
                          //                   ),),
                          //               ],
                          //             ),
                          //           ),
                          //         ),
                          //         if(sowMore)
                          //           Expanded(flex: 2,child: Container())
                          //       ],
                          //     ),
                          //     decoration: BoxDecoration(
                          //       color:  Color(0xffe3efe3),//Color(0xffC1FFC0),
                          //       borderRadius: BorderRadius.circular(8),
                          //       boxShadow: [
                          //         BoxShadow(
                          //           color: Colors.lightBlueAccent.shade100,
                          //           offset: Offset(2,2),
                          //           //  blurRadius: 1,
                          //
                          //         )
                          //       ],
                          //       border:Border.all(
                          //         color :Colors.blue.shade100,
                          //         width: 3,
                          //       ),
                          //
                          //     ),
                          //   ),
                          //
                          // // ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                          //   child: Container(
                          //     // width: 169,
                          //   //  height:100,
                          //     child: Center(
                          //       child: Column(
                          //         children: [
                          //           Text('Best Alternatives',style: GoogleFonts.pottaOne(color:Colors.black
                          //               ,fontSize: 30,fontWeight: FontWeight.w400) ,),
                          //           SizedBox(height: 20,),
                          //           Row(
                          //             children: [
                          //               SizedBox(width: 20,),
                          //               Image(
                          //                 height: 150,
                          //                 width: 150,
                          //                 image: AssetImage('images/reduce-reuse-recycle-earth-png-reduce-reuse-recycle-logo-free-all-download-1563 (1).png'),
                          //               ),
                          //               SizedBox(width: 20,),
                          //               Image(
                          //                 height: 150,
                          //                 width: 150,
                          //                 image: AssetImage('images/save-earth.png'),
                          //               ),
                          //             ],
                          //           ),
                          //           SizedBox(height: 20,),
                          //            Padding(
                          //              padding: const EdgeInsets.all(10.0),
                          //              child: Center(
                          //               child: Container(
                          //                 height: 350,
                          //                 //width: 240,
                          //                 decoration: BoxDecoration(
                          //                   borderRadius: BorderRadius.circular(20),
                          //                   boxShadow: [
                          //                     BoxShadow(
                          //                       color: Colors.green,
                          //                       blurRadius: 10,
                          //                       blurStyle: BlurStyle.outer,
                          //
                          //                     )
                          //                   ],
                          //                   border:Border.all(
                          //                     color :Colors.white,
                          //                     width: 5,
                          //                   ),
                          //                   image: DecorationImage(
                          //                     image: AssetImage('images/2150928739.jpg'),
                          //                     fit: BoxFit.cover,
                          //                   ),
                          //                 ),
                          //               ),
                          //           ),
                          //            ),
                          //           Padding(
                          //             padding: const EdgeInsets.all(10.0),
                          //             child: Center(
                          //               child: Container(
                          //                 height: 350,
                          //                 //width: 240,
                          //                 decoration: BoxDecoration(
                          //                   borderRadius: BorderRadius.circular(20),
                          //                   boxShadow: [
                          //                     BoxShadow(
                          //                       color: Colors.green,
                          //                       blurRadius: 10,
                          //                       blurStyle: BlurStyle.outer,
                          //
                          //                     )
                          //                   ],
                          //                   border:Border.all(
                          //                     color :Colors.white,
                          //                     width: 5,
                          //                   ),
                          //                   image: DecorationImage(
                          //                     image: AssetImage('images/retina.jpg'),
                          //                     fit: BoxFit.cover,
                          //                   ),
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.all(10.0),
                          //             child: Center(
                          //               child: Container(
                          //                 height: 350,
                          //                 //width: 240,
                          //                 decoration: BoxDecoration(
                          //                   borderRadius: BorderRadius.circular(20),
                          //                   boxShadow: [
                          //                     BoxShadow(
                          //                       color: Colors.green,
                          //                       blurRadius: 10,
                          //                       blurStyle: BlurStyle.outer,
                          //
                          //                     )
                          //                   ],
                          //                   border:Border.all(
                          //                     color :Colors.white,
                          //                     width: 5,
                          //                   ),
                          //                   image: DecorationImage(
                          //                     image: AssetImage('images/2150928739.jpg'),
                          //                     fit: BoxFit.cover,
                          //                   ),
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.all(10.0),
                          //             child: Center(
                          //               child: Container(
                          //                 height: 350,
                          //                 //width: 240,
                          //                 decoration: BoxDecoration(
                          //                   borderRadius: BorderRadius.circular(20),
                          //                   boxShadow: [
                          //                     BoxShadow(
                          //                       color: Colors.green,
                          //                       blurRadius: 10,
                          //                       blurStyle: BlurStyle.outer,
                          //
                          //                     )
                          //                   ],
                          //                   border:Border.all(
                          //                     color :Colors.white,
                          //                     width: 5,
                          //                   ),
                          //                   image: DecorationImage(
                          //                     image: AssetImage('images/2150928739.jpg'),
                          //                     fit: BoxFit.cover,
                          //                   ),
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //     decoration: BoxDecoration(
                          //       color: Color(0xffe3efe3),
                          //       borderRadius: BorderRadius.circular(8),
                          //       boxShadow: [
                          //         BoxShadow(
                          //           color: Colors.green.shade200,
                          //           offset: Offset(2,2),
                          //           //  blurRadius: 1,
                          //
                          //         )
                          //       ],
                          //       border:Border.all(
                          //         color :Colors.green.shade100,
                          //         // width: 10,
                          //       ),
                          //
                          //     ),
                          //
                          //   ),
                          // ),
                        ],
                      );

              },
              childCount:1,
              )
          )
        ],
      )




        ,
    );
  }
}

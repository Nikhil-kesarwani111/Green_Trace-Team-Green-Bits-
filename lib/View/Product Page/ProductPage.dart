import 'package:cached_network_image/cached_network_image.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Navigations/routes_name.dart';

class ProductPage extends StatefulWidget {
  String? carbonFootprintArticle;
  String? carbonFootprintvalue;
  String? waterFootprintArticle;
  String? waterFootprintvalue;
  String? recycleInformation;
  String? productname;
  String? image;

  ProductPage({
    super.key,
    required this.carbonFootprintArticle,
    required this.carbonFootprintvalue,
    required this.waterFootprintArticle,
    required this.waterFootprintvalue,
    required this.recycleInformation,
    required this.productname,
    required this.image,
  });

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isSave = false;
  bool sowMore = false;
  bool showMoreCarbon = false;
  bool recycle = false;

  void toggledSave() {
    setState(() {
      isSave = !isSave;
    });
  }

  void toggledMore() {
    setState(() {
      sowMore = !sowMore;
    });
  }

  void toggledMorerecycle() {
    setState(() {
      recycle = !recycle;
    });
  }

  void toggledMoreCarbon() {
    setState(() {
      showMoreCarbon = !showMoreCarbon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//Color(0xffC1FFC0),
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
                    text: 'Green',
                    style: GoogleFonts.pottaOne(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: 'Trace',
                        style: GoogleFonts.pottaOne(
                            color: Colors.black87,
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
                //
              ),
            ],
          ),
          SizedBox(
            width: 70,
          ),
          //   Icon(CupertinoIcons.square_favorites_alt,color: Colors.black,size: 25),
          SizedBox(
            width: 30,
          ),
        ],

        //  backgroundColor: Color(0xffFBF6EE),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: false,
            floating: true,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                Container(
                  color: Color(0xffC1FFC0),
                  width: double.infinity,
                  height: 600,
                  child: Expanded(
                    child: Center(
                        child: Container(
                      height: 230,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black26.withOpacity(0.5), // Shadow color
                            spreadRadius: 3,
                            blurRadius:
                                3, // Reduced blur radius for subtle effect
                            offset: Offset(0, 3), // Changes position of shadow
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8.0), // Ensure the child doesn't overflow the container
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: widget.image.toString(),
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey.shade200,
                            child: Container(
                              height: 280,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                // Adjust the radius as needed
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26
                                        .withOpacity(0.5), // Shadow color
                                    spreadRadius: 3,
                                    blurRadius:
                                        3, // Reduced blur radius for subtle effect
                                    offset: Offset(
                                        0, 3), // Changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    )),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        try {
                          await Share.share(widget.productname.toString());
                        } catch (e) {
                          print(e.toString());
                        }
                      },
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 330),
                          child: Icon(
                            Icons.share_rounded,
                            color: Colors.black,
                            size: 30,
                          )),
                    ),
                    InkWell(
                      onTap: (){
                        toggledSave();
                      },
                      child:isSave? const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10,horizontal: 330),
                        child: InkWell(
                          child: Icon(
                            CupertinoIcons.bookmark,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ):const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10,horizontal: 330),
                        child: InkWell(
                          child: Icon(
                            CupertinoIcons.bookmark_solid,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Column(
                children: [
                  Container(
                    color: Color(0xffC1FFC0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.shade100,
                            offset: Offset(0, 2),
                            //  blurRadius: 2,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 60,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xffFBF6EE),
                                width: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 25),
                            child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //    SizedBox(width: 35,),
                                Text(
                                  widget.productname.toString(),
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                   SizedBox(width: 39,),
                                Row(
                                  children: [
                                    Material(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(58.0)),
                                      elevation: 3,
                                      child: InkWell(
                                        onTap:(){
                                          String product= widget.productname.toString();
                                           String link='https://www.amazon.in/s?k=${product}&crid=27W2CZPH7SD5B&sprefix=c%2Caps%2C360&ref=nb_sb_ss_ts-doa-p_1_1';
                                          launchUrl(
                                            Uri.parse(link),
                                            mode: LaunchMode.inAppWebView,
                                          );

                                               },
                                        child: Container(

                                          height: 36,
                                          width: 35,
                                          decoration:  BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('images/logo.png'),
                                                fit:BoxFit.cover,
                                              )
                                          ),

                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Material(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(58.0)),
                                      elevation: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: InkWell(
                                          onTap:(){
                                            String product= widget.productname.toString();
                                            String link='https://www.flipkart.com/search?q=${product}&as=on&as-show=on&otracker=AS_Query_TrendingAutoSuggest_1_0_na_na_na&otracker1=AS_Query_TrendingAutoSuggest_1_0_na_na_na&as-pos=1&as-type=TRENDING&suggestionId=mobiles&requestId=b3b94a3f-cd40-4c1b-9e3c-26412e9cd9f5';
                                            launchUrl(
                                              Uri.parse(link),
                                              mode: LaunchMode.inAppWebView,
                                            );

                                          },
                                          child: Container(

                                            height: 26,
                                            width: 25,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle
                                            ),
                                            child: Image.asset('images/flipkart.png'),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: InkWell(
                              onTap: toggledMoreCarbon,
                              child: Container(
                                // width: 169,
                                height: showMoreCarbon ? 250 : 75,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, right: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(

                                                child:
                                                Image.asset('images/co2.png')),
                                            //  SizedBox(width: 1,),

                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      widget.carbonFootprintvalue
                                                          .toString(),
                                                      style: GoogleFonts.poppins(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '  (Approx)',
                                                      style: GoogleFonts.poppins(
                                                          color: Colors.black38,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                                //  SizedBox(height: 2,),
                                                Text(
                                                  'Carbon Footprints',
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.black54,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),

                                            SizedBox(width: 5),
                                            InkWell(
                                              onTap: toggledMoreCarbon,
                                              child: Container(
                                                  child: showMoreCarbon
                                                      ? Icon(
                                                      Icons.expand_less_rounded)
                                                      : Icon(Icons
                                                      .expand_more_rounded)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (showMoreCarbon)
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, RoutesName.readmore);
                                                },
                                                child: SingleChildScrollView(
                                                  child: RichText(
                                                    textAlign: TextAlign.justify,
                                                    //  textAlign: Alignment.topStart,
                                                    text: TextSpan(
                                                        text: widget
                                                            .carbonFootprintArticle,
                                                        style: GoogleFonts.poppins(
                                                            color: Colors.black54,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.w400),
                                                        children: [
                                                          TextSpan(
                                                            text: '  Read more',
                                                            style:
                                                            GoogleFonts.poppins(
                                                                color: Colors.blue
                                                                    .shade700,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                          )
                                                        ]),
                                                    //
                                                  ),
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
                                      offset: Offset(0, 2),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: InkWell(
                              onTap: toggledMore,
                              child: Container(
                                // width: 169,
                                height: sowMore ? 250 : 75,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, right: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(

                                                child:
                                                Image.asset('images/4fa8ccd95866db239face1f4749df505.png')),
                                            //  SizedBox(width: 1,),

                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      widget
                                                          .waterFootprintvalue
                                                          .toString(),
                                                      style: GoogleFonts.poppins(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '  (Approx)',
                                                      style: GoogleFonts.poppins(
                                                          color: Colors.black38,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                                //  SizedBox(height: 2,),
                                                Text(
                                                  'Water Footprints',
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.black54,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),

                                            SizedBox(width: 5),
                                            InkWell(
                                              onTap: toggledMoreCarbon,
                                              child: Container(
                                                  child: sowMore
                                                      ? Icon(
                                                      Icons.expand_less_rounded)
                                                      : Icon(Icons
                                                      .expand_more_rounded)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (sowMore)
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, RoutesName.readmore);
                                                },
                                                child: SingleChildScrollView(
                                                  child: RichText(
                                                    textAlign: TextAlign.justify,
                                                    //  textAlign: Alignment.topStart,
                                                    text: TextSpan(
                                                        text:  widget
                                                            .waterFootprintArticle,
                                                        style: GoogleFonts.poppins(
                                                            color: Colors.black54,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.w400),
                                                        children: [
                                                          TextSpan(
                                                            text: '  Read more',
                                                            style:
                                                            GoogleFonts.poppins(
                                                                color: Colors.blue
                                                                    .shade700,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                          )
                                                        ]),
                                                    //
                                                  ),
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
                                      offset: Offset(0, 2),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: InkWell(
                              onTap: toggledMorerecycle,
                              child: Container(
                                // width: 169,
                                height: recycle ? 100 : 75,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, right: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                                height: 42,
                                                width: 62,
                                                child:
                                                Image.asset('images/recycle.png')),
                                            //  SizedBox(width: 1,),

                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [

                                                //  SizedBox(height: 2,),
                                                Text(
                                                  'Recycling  information',
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.black54,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),

                                         //   SizedBox(width: 2),
                                            InkWell(
                                              onTap: toggledMorerecycle,
                                              child: Container(
                                                  child:recycle
                                                      ? Icon(
                                                      Icons.expand_less_rounded)
                                                      : Icon(Icons
                                                      .expand_more_rounded)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (recycle)
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, RoutesName.readmore);
                                                },
                                                child: SingleChildScrollView(
                                                  child: RichText(
                                                    textAlign: TextAlign.justify,
                                                    //  textAlign: Alignment.topStart,
                                                    text: TextSpan(
                                                        text:   widget.recycleInformation,
                                                        style: GoogleFonts.poppins(
                                                            color: Colors.black54,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.w400),
                                                        children: [
                                                          TextSpan(
                                                            text: '  Read more',
                                                            style:
                                                            GoogleFonts.poppins(
                                                                color: Colors.blue
                                                                    .shade700,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                          )
                                                        ]),
                                                    //
                                                  ),
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
                                      offset: Offset(0, 2),
                                      //  blurRadius: 2,
                                    )
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
                  ),

                ],
              );
            },
            childCount: 1,
          ))
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(
              context, RoutesName.tracker);
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0,left: 8.0,right: 8.0),
          child: Container(
            height: 65,
            decoration: BoxDecoration(
              color: Colors.green.shade300,
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(35),
              color: Color(0xffC1FFC0),

              //borderOnForeground:true ,
              //surfaceTintColor: Colors.blue,
              elevation: 12,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Record',
                            style: GoogleFonts.poppins(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: '  Emission',
                                style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight:
                                    FontWeight.w600),
                              )
                            ]),
                        //
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 30,
                  ),
                  Image(
                    height: 30,
                    width: 60,
                    image: AssetImage(
                        'images/carbon logo tracker.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

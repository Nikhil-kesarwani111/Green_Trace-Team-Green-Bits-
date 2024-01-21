import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Share extends StatefulWidget {
  const Share({super.key});

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {

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
                      //  Navigator.pushNamed(context, RoutesName.share);
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

                    Container(
                      height: 400,
                      //width: 450,
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
                                image: AssetImage('images/share.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            //color: Colors.redAccent,
                          )),
                          Padding(
                            padding: const EdgeInsets.only(top:100.0),
                            child: Expanded(flex:1,child: Container(
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //   colors: [Colors.black, Colors.transparent],
                                //   begin: Alignment.bottomCenter,
                                //   end: Alignment.topCenter,
                                // ),
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
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 260.0,left: 10,right: 10),
                          //   child: RichText(
                          //     text: TextSpan(
                          //         text:  'Climate change is getting worst day by day ',style: GoogleFonts.poppins(color:Colors.white,fontSize: 12,fontWeight: FontWeight.w400),
                          //         children: [
                          //           TextSpan(
                          //             text:'Read More ...',style: GoogleFonts.poppins(color:Colors.lightBlue,fontSize: 12,fontWeight: FontWeight.w400),
                          //
                          //           )
                          //         ]
                          //     ),
                          //     //
                          //   ),
                          // ),
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

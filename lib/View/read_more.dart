import 'package:flutter/material.dart';

class ReadMore extends StatefulWidget {
  const ReadMore({super.key});

  @override
  State<ReadMore> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount:1,
                itemBuilder: (context,index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 600,
                        width: 450,
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
                                  image: AssetImage('images/Screenshot_20240222-003810.png'),
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
                      ),
                     // SizedBox(height: 1,),
                      Padding(
                        padding: const EdgeInsets.all(14.0),

                        child: Text('Last year’s UN Climate Change Conference, COP27, sent a much-needed political signal: those on the frontlines of the climate crisis are being heard. The decision to establish a fund to compensate vulnerable countries for the losses and damages they incur due to climate shocks is an important step toward justice.\nBut there remains much to do. We must urgently and drastically cut emissions. The international community is way off course in meeting the goals of the Paris Accord. Failure to do so spells catastrophe. Cataclysmic weather events are hitting more people, more often, with every passing year. Yet still some seek to delay action.\n  At the heart of our fight for a livable planet lies an information battle, one we ignore at our peril. The spread of lies about climate change, and the apathy they induce, undermines all other efforts. To survive, humanity must wrest control from those seeking to distract from and delay climate action.\n  Monday’s release of the IPCC synthesis report is expected to present the most up-to-date knowledge on climate change, offering policymakers the latest science-based options for addressing the climate crisis, covering everything from how and why the climate has changed, to the impacts and risks of climate change, as well as solutions to the climate crisis.\n  UN communicators will be engaged in translating these findings into accessible information for the public. We are stepping up to compete with savvy disinformation actors who actively distort the science.\n Climate lies are nothing new. Decades of denialism by the fossil fuel industry have eroded trust in climate science, and even facts in general. Even now, as you read this, ill-intentioned actors are operating tirelessly across social media, sowing doubt about the climate emergency and its solutions.\n  Recent developments have emboldened climate ‘inactivists’. Media monitors say hate and lies of all kinds have gotten more traction since Twitter’s acquisition by Elon Musk, including climate disinformation. Twitter insists it hasn’t changed its moderation policies or practices since the takeover. Yet analysts say mass staff layoffs and walkouts has resulted in an explosion of bad behavior and false information.We must act now to avoid the worst climate outcomes. The pub',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey.shade700),),
                      )
                    ],
                  );
                })
            ,
          ),
        ],
      ),
    );
  }
}

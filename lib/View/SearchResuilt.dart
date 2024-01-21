import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';


import '../Navigations/routes_name.dart';
import '../Servises/function_api.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    FutureFunction futureFunction=FutureFunction();
    return Scaffold(
      body: Stack(
        children:[

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black87,BlendMode.screen),
                filterQuality: FilterQuality.high,
                opacity: 0.8,
                image: AssetImage('images/2150928737.jpg'),
                fit :BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.productpage);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 78.0),
              child: Expanded(
                child: FutureBuilder(
                  future:futureFunction.getEventApi() ,
                  builder: (context,snapshot){

                    if(snapshot.connectionState==ConnectionState.waiting){

                      return ListView.builder(
                          itemCount:6,
                          itemBuilder:(context,index){
                            return Shimmer.fromColors(///////////Loading Case
                              baseColor:Colors.white,
                              highlightColor: Colors.blueGrey.shade100,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: ListTile(
                                  title: Container(
                                    height: 10,width:89,color: Colors.orange,

                                  ),

                                  // leading:Container(height: 50,width:50,color: Colors.white,),
                                ),
                              ),
                            );
                          });

                    }
                    else{
                      return  ListView.builder(
                          itemCount:14,
                          itemBuilder:(context,index){
                            return    Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                              child: Container(
                                // width: 169,
                                height:30,
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                                        child: Icon(CupertinoIcons.clock,size: 20,color: Colors.grey,),
                                      ),
                                      SizedBox(width: 20,),
                                      Text('Recent Products',style: GoogleFonts.poppins(color:Colors.black
                                          ,fontSize: 14,fontWeight: FontWeight.w400) ,),
                                      SizedBox(width: 20,),

                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffFBF6EE),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(2,2),
                                      //  blurRadius: 1,

                                    )
                                  ],
                                  border:Border.all(
                                    color :Colors.green.shade100,
                                    width: 1,
                                  ),

                                ),
                              ),
                            );
                          });
                    }



                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 34,horizontal: 8),
            child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Type Product name',
              fillColor:  Colors.grey.shade100,
              filled: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: const Icon(CupertinoIcons.search,color: Colors.grey,size: 30,),
              ),


              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                borderRadius: BorderRadius.circular(40),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
        ),
          ),

      ],
      ),
    );
  }
}

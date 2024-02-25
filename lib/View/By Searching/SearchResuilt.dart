import 'package:cached_network_image/cached_network_image.dart';
import 'package:carbon_footprint/View/Product%20Page/ProductPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final  auth =FirebaseAuth.instance;
  final  ref=FirebaseDatabase.instance.ref('ProductData');

  final searchFilter=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFBF6EE),
      body:Stack(
        children:[
          Padding(
            padding: const EdgeInsets.only(top: 90,bottom: 8),
            child: Expanded(
              child:StreamBuilder(
                stream: ref.onValue,
                builder: (context,AsyncSnapshot<DatabaseEvent>snapshot){
                 if(!snapshot.hasData){
                   return Container();
                 }else{

                   Map<dynamic,dynamic>? map =snapshot.data!.snapshot.value as dynamic;
                   List <dynamic> list =[];
                   list.clear();
                   list= map!.values.toList();

                   return ListView.builder(
                       itemCount:snapshot.data!.snapshot.children.length,
                       itemBuilder:(context,index){
                         final title=list[index]['title'].toString();
                         if(searchFilter.text.isEmpty){
                           return Column(
                             children: [
                               Padding (
                                 padding: const EdgeInsets.all(2.0),
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap:(){
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage(
                                           image: list[index]['MyImages'].toString(),
                                           productname: list[index]['title'].toString(),
                                              carbonFootprintArticle: list[index]['carbonFootprint']['about'].toString(),
                                             carbonFootprintvalue:  list[index]['carbonFootprint']['value'].toString(),
                                              waterFootprintArticle:list[index]['waterfootprint']['about'].toString(),
                                           waterFootprintvalue: list[index]['waterfootprint']['value'].toString(),
                                             recycleInformation:list[index]['recycleInfo'].toString(),
                                                              )
                                                                )
                                                                 );
                          },
                                       child: ListTile(
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(20),
                                             side: BorderSide(   color:Colors.black12,)
                                         ),
                                         style: ListTileStyle.list,
                                         //  onTap: ()=>_tabCallback,
                                         title: Text(list[index]['title'].toString(),style: GoogleFonts.poppins(color:Colors.black
                                             ,fontSize: 14,fontWeight: FontWeight.w400) ,),
                                         selected: true,
                                         leading: CircleAvatar(
                                               backgroundImage: CachedNetworkImageProvider(
                                                 list[index]['MyImages'].toString(),
                                               ),
                                         ),
                                         trailing: Icon(Icons.search,color: Colors.grey,),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),

                             ],
                           );
                         }else if(title.toLowerCase().contains(searchFilter.text.toLowerCase().toString())){
                           return Column(
                             children: [
                               InkWell(
                                 onTap:(){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage(
                                     image: list[index]['MyImages'].toString(),
                                     productname: list[index]['title'].toString(),
                                     carbonFootprintArticle: list[index]['carbonFootprint']['about'].toString(),
                                     carbonFootprintvalue:  list[index]['carbonFootprint']['value'].toString(),
                                     waterFootprintArticle:list[index]['waterfootprint']['about'].toString(),
                                     waterFootprintvalue: list[index]['waterfootprint']['value'].toString(),
                                     recycleInformation:list[index]['recycleInfo'].toString(),
                                   )
                                   )
                                   );
                                 },
                                 child: ListTile(
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20),
                                       side: BorderSide(   color:Colors.black12,)
                                   ),
                                   style: ListTileStyle.list,
                                   //  onTap: ()=>_tabCallback,
                                   title: Text(list[index]['title'].toString(),style: GoogleFonts.poppins(color:Colors.black
                                       ,fontSize: 14,fontWeight: FontWeight.w400) ,),
                                   selected: true,
                                   leading: CircleAvatar(
                                     backgroundImage: CachedNetworkImageProvider(
                                       list[index]['MyImages'].toString(),
                                     ),
                                   ),
                                   trailing: Icon(Icons.search,color: Colors.grey,),
                                 ),
                               ),
                             ],
                           );
                         }
                         else{
                           return Container();
                         }
                       });
                 }
                },
              ),
            ),
          ),
          Container(
            color: Color(0xffFBF6EE),
            height: 125,
          ),
          Container(
            height: 110,
            padding: const EdgeInsets.only(top: 58,left: 8,right: 8,bottom:0),
            child: TextFormField(
              controller:searchFilter ,
            decoration: InputDecoration(
              hintText: 'Type Product name',
              fillColor:  Colors.grey.shade100,
              filled: true,
              // fillColor: Colors.red,
              prefixIcon: const Icon(CupertinoIcons.search,color: Colors.grey,size: 30,),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
              onChanged: (String value){
                  setState(() {
                  });
              },
        ),
          ),
      ],
      ),
    );
  }
}

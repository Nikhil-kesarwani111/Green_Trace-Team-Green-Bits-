
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:share_plus/share_plus.dart';

class Tracker extends StatefulWidget {
  const Tracker({super.key});




  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker>  with TickerProviderStateMixin {

  late final AnimationController _controller=AnimationController(
      duration: Duration(seconds: 3),
      vsync:this )..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller;
  }

  final List <Color> colorList=[
    const Color(0xff62D2A2),
    const Color(0xff00909E),
    const Color(0xffF9AC40),
    const Color(0xffF85F73)
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:     Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: 69),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 50,
                width: 50,
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
          SizedBox(height: 45,),
          PieChart(
            dataMap:{
              "Travel":1.3,
              "Energy Usage":2.32,
              "Food": 0.75,
              "Shopping": 2.57,
             // "Food": 67,

            },
            chartValuesOptions: ChartValuesOptions(
              showChartValuesInPercentage: true,
            ),
            animationDuration:Duration(milliseconds: 1200) ,
            chartType: ChartType.ring,
            chartRadius: MediaQuery.of(context).size.width / 2.4,
            colorList:colorList,
            ringStrokeWidth: 43,
            chartLegendSpacing:47,
            legendOptions: LegendOptions(
              legendTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        //    SizedBox(height:130,),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 12,
                  width: 349,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),

                Row(
                  children: [
                    Text('You',style: GoogleFonts.poppins(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),
                    SizedBox(width: 238,),
                    Text('6.94 Tonnes',style: GoogleFonts.poppins(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),

                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 12,
                  width: 145,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                Row(
                  children: [
                    Text('Avg India',style: GoogleFonts.poppins(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),
                    SizedBox(width: 203,),
                    Text('2.33 Tonnes',style: GoogleFonts.poppins(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),

                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 12,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                Row(
                  children: [
                    Text('Avg World',style: GoogleFonts.poppins(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),
                    SizedBox(width: 195,),
                    Text('4.50 Tonnes',style: GoogleFonts.poppins(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),

                  ],
                ),
              ],
            ),
          ),


        

          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8.0,right: 8.0),
            child: Card(
              shadowColor:Colors.green,
              margin:EdgeInsets.all(12),
              elevation: 14,
              color: Colors.green.shade50,
              child: Column(
                children: [
                  ReusableRow(title: 'Total Carbon Use', value: "6.94 T" ),
                  ReusableRow(title: 'Travel', value: '1.3 T'),
                  ReusableRow(title: 'Energy Usage', value: '2.32 T'),
                  ReusableRow(title: 'Food', value: '0.75 T'),
                  ReusableRow(title: 'Shopping', value: '2.57 T')


                ],
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title,value;
  ReusableRow({super.key,required this.title,required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight:FontWeight.w500),),
              Text(value,style: TextStyle(color: Colors.grey.shade600,fontSize: 16,fontWeight: FontWeight.w500),),
            ],
          ),
          SizedBox(height: 5,),
          Divider()
        ],
      ),
    );
  }
}
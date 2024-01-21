import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

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
    const Color(0xff60BA47),
    const Color(0xffFF9843),
    const Color(0xff0166C9),
    const Color(0xffF66D44)
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:     Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          SizedBox(height: 100),
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
          SizedBox(height: 30,),
          PieChart(
            dataMap:{
              "Travel":77,
              "Energy Usage":45,
              "Food": 6,
              "Shopping": 67,
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
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shadowColor:Colors.green,
                margin:EdgeInsets.all(12),
                elevation: 14,
                color: Colors.green.shade50,
              child: Column(
                children: [
                  ReusableRow(title: 'Total Carbon Use', value: "195" ),
                  ReusableRow(title: 'Travel', value: '77'),
                  ReusableRow(title: 'Energy Usage', value: '45'),
                  ReusableRow(title: 'Food', value: '6'),
                  ReusableRow(title: 'Shopping', value: '67')


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
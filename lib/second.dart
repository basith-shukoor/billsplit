import 'dart:ffi';

import 'package:bill_split/main.dart';
import 'package:flutter/material.dart';
class Second extends StatefulWidget
{
  double friends;
  String total;
  double tip;
  String tax;
  Second({Key? key, required this.friends, required this.total, required this.tip, required this.tax}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  double result=0;
  @override
  void initState(){
    super.initState();
    calculate();
  }
  calculate(){
    double taxamount=(double.parse(widget.total)*double.parse(widget.tax))/100;
    double finalbill=(double.parse(widget.total)+widget.tip+taxamount)/widget.friends;
   setState(() {
     result=finalbill;
   });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,
          title:Text("Result",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                SizedBox(height: 30,),
          Row(
          children: [
          Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 150,width: 150,color: Colors.amber,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text("Equely Divided",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Text("${result.toStringAsFixed(2)}",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              ],

            ),



          ),
      ),
      Container(
          height: 150,width: 190,color: Colors.amber,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text("Friends "+widget.friends.toString(),style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text("Tax"+widget.tax.toString(),style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text("Tip"+widget.tip.toString(),style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
              ),

            ],
          ),

      ),
      ],
    ),
                SizedBox(height: 10,),
                Text("Everybody Should Pay $result?",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.amber),
            height: 50,width: 339,
            child: TextButton(onPressed: (){
              Navigator.pushReplacement(context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Bill(),
                ),
              );
            },
              child: Row(
                children: [
                  SizedBox(width: 80,),
                  Text("Calculate Again",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),)

                ],
              ),
            ),

          ),
      ),

                  ],
                )
    ],





          ),
        ),







      ),




    );
  }
}

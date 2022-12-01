import 'package:bill_split/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
   home:   const Bill()),
  );
}
class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {

  double Slidervalue=0.0;
  double Tip=0;
  String tax="";

  String num = "";

  List<String> listNum = [];

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(backgroundColor: Colors.white,

       appBar: AppBar(title:Text("Split Bill",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold) ,),backgroundColor:Colors.white,

        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 150,
                    width: double.maxFinite,
                    color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Total",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                              Text("$num",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                            ],

                          ),
                        ),

                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Friends",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

                                Text("Tax",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

                                Text("Tip",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("$Slidervalue",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

                                Text("$tax%",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

                                Text("$Tip",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                              ],

                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
                SizedBox(height: 10,),
                Text("How Many Friends?",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

                Slider(
                    value:Slidervalue,
                    thumbColor: Colors.amber,
                    activeColor: Colors.amber,
                    min: 0.0,
                    max: 200.0,
                    divisions: 10,
                    onChanged: (value) {
                      setState(() {
                        Slidervalue = value;
                        // print("slider: " + Slidervalue.toString());
                      });
                    }
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.amber,

                        ),
                        height: 130,width: 200,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tip",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("$Tip",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          Tip++;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 20,
                                        child: Icon(Icons.add,color: Colors.white,),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 100,),

                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        if(Tip==0)
                                          {
                                            Tip=0;
                                          }
                                        else{
                                          Tip--;


                                        }
                                      });

                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 20,
                                      child: Icon(Icons.remove,color: Colors.white,),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],





                        )

                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.amber,

                      ),
                      height: 130,width: 135,
                      child:Column(
                        children: [
                          SizedBox(height: 20,),
                          TextField(
                            onChanged:(value){
                              setState(() {
                                tax=value ;
                              });
                            },

                            style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(contentPadding:EdgeInsets.symmetric(vertical: 30),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                         label: Text("Tax in%",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                           ),
                            ),



                        ],
                      ),

                    ),

                  ],
                ),

                    ListView(
                      shrinkWrap: true,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                InkWell(onTap: ()
                                {
                                  setState(() {
                                    // listNum.add("1");
                                    // listNum.add("2");
                                    // listNum.add("3");
                                    num += "1";
                                  });

                                },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("1",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),


                                    ),
                                  ),
                                ),
                                InkWell(onTap: ()
                                {
                                setState(() {

                                  num += "2";
                                });

                                },



                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("2",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),







                                    ),
                                  ),
                                ),
                                InkWell(onTap: ()
                                {
                                  setState(() {

                                    num += "3";
                                  });

                                },

                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("3",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),






                                    ),
                                  ),
                                )



                              ],


                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                InkWell(onTap: ()
                                {
                                  setState(() {

                                    num += "4";
                                  });

                                },

                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("4",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),


                                    ),
                                  ),
                                ),
                                InkWell(onTap: ()
                                {
                                  setState(() {

                                    num += "5";
                                  });

                                },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("5",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),







                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: ()
                                  {
                                    setState(() {

                                      num += "6";
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("6",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),






                                    ),
                                  ),
                                )



                              ],

                            ),
                            SizedBox(height: 5,),


                            Row(
                              children: [
                                InkWell(
                                  onTap: ()
                                  {
                                    setState(() {

                                      num += "7";
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("7",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: ()
                                  {
                                    setState(() {

                                      num += "8";
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("8",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(onTap: ()
                                {
                                  setState(() {

                                    num += "9";
                                  });

                                },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("9",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),






                                    ),
                                  ),
                                )



                              ],


                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                InkWell(onTap: ()
                                {
                                  setState(() {

                                    num += ".";
                                  });

                                },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text(".",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),


                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: ()
                                  {
                                    setState(() {

                                      num += "0";
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("0",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),







                                    ),
                                  ),
                                ),
                                InkWell(onTap: ()
                                {
                                  setState(() {

                                    num = "";
                                  });

                                },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Container(
                                      decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,blurRadius: 3,offset: Offset(0,3),)
                                      ]),
                                      height: 110,width: 110,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Text("-",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                                        ],


                                      ),






                                    ),
                                  ),
                                )



                              ],
                              
                            ),

                            Row(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.green),
                                    height: 50,width: 339,
                                    child: TextButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Second(total:num,friends: Slidervalue,tip:Tip,tax:tax)),
                                        );

                                    },
                                      child: Row(
                                        children: [
                                          SizedBox(width: 115,),
                                          Text("Split Bill",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),)

                                        ],
                                      ),
                                    ),

                                  ),
                                )
                              ],
                            )


                          ],

                    ),


                  ],




                )

              ],







          ),
        ),











    );
  }
}



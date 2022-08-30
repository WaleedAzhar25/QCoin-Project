import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:qcoin/screens/Home/Trending/btc2.dart';
import 'package:qcoin/utils/const.dart';
import 'package:qcoin/utils/style.dart';
class BTC1 extends StatefulWidget {
  const BTC1({Key? key}) : super(key: key);

  @override
  State<BTC1> createState() => _BTC1State();
}

class _BTC1State extends State<BTC1> {
  bool chip1=false;
  bool chip2=true;
  bool chip3=false;
  bool chip4=false;
  bool chip5=false;
  bool chip6=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Image.asset(
                              'images/img_11.png',
                              height: 18,
                              width: 18,
                              fit: BoxFit.fill,
                            ))),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Bitcoin (BTC)",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                const Text("Bitcoin (BTX)"),
                const SizedBox(height: 20,),
                Row(
                  children: const[
                    Text("\$41,567.98",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                    SizedBox(width: 20,),
                    Icon(Icons.keyboard_arrow_up_outlined,color: darkGreen,size: 20,),
                    SizedBox(width: 5,),
                    Text("2.5%",style: TextStyle(color: Colors.grey),)
                  ],
                ),
                const SizedBox(height: 30,),

                Image.asset("assets/images/signal1.png"),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    ChoiceChip(
                      backgroundColor: backgroundColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      label:  Text('1D',style: chip1==false?const TextStyle(color:Colors.black87):const TextStyle(color: darkGreen)),
                      selected: chip1,
                      selectedColor: lightGreen,
                      onSelected: (bool selected) {
                        setState(() {
                          chip1=selected;
                          chip2=false;
                          chip3=false;
                          chip4=false;
                          chip5=false;
                          chip6=false;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: backgroundColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      label:  Text('5D',style: chip2==false?const TextStyle(color:Colors.black87):const TextStyle(color: darkGreen)),
                      selected: chip2,
                      selectedColor: lightGreen,
                      onSelected: (bool selected) {
                        setState(() {
                          chip1=false;
                          chip2=selected;
                          chip3=false;
                          chip4=false;
                          chip5=false;
                          chip6=false;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: backgroundColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      label:  Text('1M',style: chip3==false?const TextStyle(color:Colors.black87):const TextStyle(color: darkGreen)),
                      selected: chip3,
                      selectedColor: lightGreen,
                      onSelected: (bool selected) {
                        setState(() {
                          chip3=selected;
                          chip2=false;
                          chip1=false;
                          chip4=false;
                          chip5=false;
                          chip6=false;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: backgroundColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      label:  Text('5M',style: chip4==false?const TextStyle(color:Colors.black87):const TextStyle(color: darkGreen)),
                      selected: chip4,
                      selectedColor: lightGreen,
                      onSelected: (bool selected) {
                        setState(() {
                          chip1=false;
                          chip2=false;
                          chip3=false;
                          chip4=selected;
                          chip5=false;
                          chip6=false;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: backgroundColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      label:  Text('1Y',style: chip5==false?const TextStyle(color:Colors.black87):const TextStyle(color: darkGreen)),
                      selected: chip5,
                      selectedColor: lightGreen,
                      onSelected: (bool selected) {
                        setState(() {
                          chip1=false;
                          chip2=false;
                          chip3=false;
                          chip4=false;
                          chip5=selected;
                          chip6=false;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: backgroundColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      label:  Text('5Y',style: chip6==false?const TextStyle(color:Colors.black87):const TextStyle(color: darkGreen)),
                      selected: chip6,
                      selectedColor: lightGreen,
                      onSelected: (bool selected) {
                        setState(() {
                          chip1=false;
                          chip2=false;
                          chip3=false;
                          chip4=false;
                          chip5=false;
                          chip6=selected;
                        });
                      },
                    ),

                  ],
                ),
                const SizedBox(height: 20,),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25,top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.35,
                        child:  Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          color: Colors.white70,
                          elevation: 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 10,),

                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 3,
                                primary: buttonColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              ),
                                onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>BTC2()));
                            }, child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text("Sell",style: buttonStyle,),
                            )),
                          ),
                          const SizedBox(width: 20,),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 3,
                                primary: lightGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              ),
                                onPressed: (){

                            }, child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text("Buy",style: TextStyle(color:darkGreen,fontSize: 16),),
                            )),
                          ),
                          const SizedBox(width: 10,),

                        ],
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Past Day",style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w800,
                              color:Color.fromRGBO(74, 74,88,5)
                          ),),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Start",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                              Text("\$45,532.87",style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color:Color.fromRGBO(74, 74,88,5)
                              )),
                              Text("Volume",style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color:Colors.grey
                              ),),
                              Text("\$67.41",style: tileStyle,),

                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("High",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500),),
                              Text("\$46,289",style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color:Color.fromRGBO(74, 74,88,5)
                              )),
                              Text("Low",style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color:Colors.grey
                              ),),
                              Text("\$23,494",style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color:Color.fromRGBO(74, 74,88,5)
                              ),),

                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Risk",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500),),
                              Text("\$60.86",style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color:Color.fromRGBO(74, 74,88,5)
                              )),
                              Text("               "),
                              Text("               "),


                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

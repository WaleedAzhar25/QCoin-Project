import 'package:flutter/material.dart';
import 'package:qcoin/utils/const.dart';
import 'package:qcoin/utils/style.dart';

class BTC2 extends StatefulWidget {
  const BTC2({Key? key}) : super(key: key);

  @override
  State<BTC2> createState() => _BTC2State();
}

class _BTC2State extends State<BTC2> {
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
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
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
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/btc.png",)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child:  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "\$41,567.95",
                      style: registerStyle,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    Icon(Icons.keyboard_arrow_up_outlined,color: darkGreen,size: 25,),
                    SizedBox(width: 5,),
                    Text("2.5%",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),)
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
                const SizedBox(height: 30,),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      child: Row(
                        children: [
                          Expanded(child:
                          SizedBox(
                            height:100,
                            child: Card(
                              color: Colors.white70,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Your Bitcoin Address:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                                  SizedBox(height: 10,),
                                  Text("0x5cc9f177as7621asbkasnsaca87jasn",
                                    overflow: TextOverflow.ellipsis,
                                    style: subtitleStyle,
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                                onPressed: (){

                                },
                                icon: const Icon(Icons.copy,size: 25,color: darkGreen,))
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

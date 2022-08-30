import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:qcoin/utils/style.dart';

import '../../../utils/const.dart';
import '../../../utils/widgets.dart';
class NewCard extends StatefulWidget {
  const NewCard({Key? key}) : super(key: key);

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  bool isChecked = false;
  final TextEditingController cardController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  var maskFormatter =  MaskTextInputFormatter(
      mask: '**** ***** **** ****',
      filter: {"*": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
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
                              Navigator.of(context).pop();
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
                      "Add Card",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Center(
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                            color: lightGreen,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(30))),
                        color: darkGreen,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.wallet_outlined,
                                    color: Colors.white,
                                  ),
                                  Spacer(),
                                  Text(
                                    '•••',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30),
                                  ),

                                ],
                              ),
                              const Text("5698   56254   6786   9979",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Cad Holder",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15),),
                                      Text(
                                        'Name Here',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    'images/img_15.png',
                                    height: 40,
                                    width: 50,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
              const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text("Enter Information",style: titleStyle,),
                ),
                const SizedBox(height: 15,),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text("Card Number",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(15.0),

                  ),
                  child: TextFormField(
                    inputFormatters: [
                      maskFormatter
                    ],
                    controller: cardController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.length < 17) {
                        return Message("Enter Your Bank Number", context);
                      }
                    },
                    decoration:   InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Image.asset("images/img_15.png",height: 20,width: 30,),
                      ),
                      hintText: "**** ***** **** 9979",
                      labelStyle: const TextStyle(color: Colors.black),
                      contentPadding: const EdgeInsets.all(25),
                      enabledBorder: InputBorder.none,
                      focusedBorder:
                      OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(15.0),
                          borderSide:  const BorderSide(color: Colors.teal,width: 2.5 )
                      ),
                    ),

                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 15,left: 8),
                  child:  Text("Card Holder",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      controller: usernameController,
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return Message("Please Enter your name", context);
                        }
                        return null;
                      },
                      decoration:   InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_rounded,color: Colors.teal,),
                        hintText: "Full name",
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.all(25),
                        // disabledBorder:  OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.teal,width: 2.5),
                        //   gapPadding: 8,
                        //   borderRadius: BorderRadius.all(Radius.circular(15),
                        //   ),
                        enabledBorder: InputBorder.none,
                        focusedBorder:
                        OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(15.0),
                            borderSide:  const BorderSide(color: Colors.teal,width: 2.5 )
                        ),
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: const [
                    Text("Expiration Date",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 60),
                      child: Text("CVC",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            controller: usernameController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return Message("Please Enter your name", context);
                              }
                              return null;
                            },
                            decoration:   InputDecoration(
                              suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,),
                              labelStyle: const TextStyle(color: Colors.black),
                              contentPadding: EdgeInsets.all(5),
                              // disabledBorder:  OutlineInputBorder(
                              //   borderSide: BorderSide(color: Colors.teal,width: 2.5),
                              //   gapPadding: 8,
                              //   borderRadius: BorderRadius.all(Radius.circular(15),
                              //   ),
                              enabledBorder: InputBorder.none,
                              focusedBorder:
                              OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(10.0),
                                  borderSide:  const BorderSide(color: Colors.teal,width: 2.5 )
                              ),
                            ),

                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            controller: usernameController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return Message("Please Enter your name", context);
                              }
                              return null;
                            },
                            decoration:   InputDecoration(
                              suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,),
                              labelStyle: const TextStyle(color: Colors.black),
                              contentPadding: EdgeInsets.all(5),
                              // disabledBorder:  OutlineInputBorder(
                              //   borderSide: BorderSide(color: Colors.teal,width: 2.5),
                              //   gapPadding: 8,
                              //   borderRadius: BorderRadius.all(Radius.circular(15),
                              //   ),
                              enabledBorder: InputBorder.none,
                              focusedBorder:
                              OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(10.0),
                                  borderSide:  const BorderSide(color: Colors.teal,width: 2.5 )
                              ),
                            ),

                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            controller: usernameController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return Message("Please Enter your name", context);
                              }
                              return null;
                            },
                            decoration:   InputDecoration(
                              suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,),
                              labelStyle: const TextStyle(color: Colors.black),
                              contentPadding: EdgeInsets.all(5),
                              // disabledBorder:  OutlineInputBorder(
                              //   borderSide: BorderSide(color: Colors.teal,width: 2.5),
                              //   gapPadding: 8,
                              //   borderRadius: BorderRadius.all(Radius.circular(15),
                              //   ),
                              enabledBorder: InputBorder.none,
                              focusedBorder:
                              OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(10.0),
                                  borderSide:  const BorderSide(color: Colors.teal,width: 2.5 )
                              ),
                            ),

                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: buttonColor,
                          width: 3
                        ),
                      ),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Switch(
                          activeColor: buttonColor,
                          inactiveTrackColor: Colors.black12,
                          activeTrackColor: Colors.black12,
                          value: isChecked,
                          onChanged: (bool value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("Mark as default card",style: subtitleStyle,),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:qcoin/screens/forgotpassword.dart';
import 'package:qcoin/screens/login.dart';
import 'package:qcoin/screens/verification/phoneScreen/verifyPhone.dart';

import '../../../utils/style.dart';
import '../../../utils/widgets.dart';
class PhoneScreen extends StatefulWidget {
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController phoneController = TextEditingController();
  var maskFormatter =  MaskTextInputFormatter(
      mask: '+00 0000000 000',
      filter: { "0": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 15),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          depth: 4,
                          lightSource: LightSource.topLeft,
                          color: Colors.white),
                      child: Center(
                        child: IconButton(
                          icon: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: Colors.black87,
                              )),
                          onPressed: () {
                            Navigator.of(context).pop(MaterialPageRoute(
                                builder: (_) => const ForgotPassword()));
                          },
                        ),
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Enter Your Phone \nNumber",
                  style: registerStyle,
                ),
                SizedBox(height: 70,),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextFormField(
                    inputFormatters: [
                      maskFormatter
                    ],
                    controller: phoneController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.length < 8) {
                        return Message("Enter Your Phone Number", context);
                      }
                    },
                    decoration:   InputDecoration(
                      prefixIcon:  const Icon(CupertinoIcons.phone,color: Colors.teal,),
                      hintText: "+00 000000 000",
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
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: NeumorphicButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>VerifyPhone(number: phoneController.text)));
                        },
                        style:  NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                            color: buttonColor,
                            depth: 4,
                            intensity: 2,
                            surfaceIntensity: 2),
                        child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Verification",
                                style: buttonStyle,
                              ),
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: NeumorphicButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=> Login()));
                        },
                        style:  NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                           color: const Color.fromRGBO(200, 238, 234, 90),
                            depth: 4,
                            intensity: 2,
                            surfaceIntensity: 2),
                        child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Later",
                                style: laterStyle,
                              ),
                            )),
                      ),
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

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:qcoin/screens/login.dart';
import 'package:qcoin/screens/verification/emailScreen/emailScreen.dart';
import 'package:qcoin/screens/verification/phoneScreen/phoneScreen.dart';

import '../utils/style.dart';
import '../utils/widgets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isSelected1=false;
  bool isSelected2=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSelected1=false;
    isSelected2=false;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
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
                                builder: (_) => const Login()));
                          },
                        ),
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  " Forget Password",
                  style: registerStyle,
                ),
                const SizedBox(height: 10,),
                const Text("  Select which contact detail should we use\n  to reset your password",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 0.7,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  )),
                const SizedBox(
                  height: 50,
                ),
                Card(
                  elevation: 3,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child:  ListTile(
                    focusColor: Colors.teal,
                     selectedColor: Colors.teal,
                     onTap: (){
                      setState((){
                        isSelected1=!isSelected1;
                        isSelected2=false;
                      });
                     },
                    dense: true,
                     contentPadding: const EdgeInsets.all(5),
                    leading: Image.asset("assets/images/mail.png",),
                    shape: RoundedRectangleBorder(
                      side: isSelected1==true? const BorderSide(
                        color: Colors.teal,
                        width: 1.5,
                      ):const BorderSide(
                        color: Colors.white,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    subtitle: const Text("Code Send to Your Email",
                        style:TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26,
                        )),
                    title: const Text("Email",
                      style:TextStyle(
                        fontSize: 18.0,
                        wordSpacing: 1,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),

                  ),
                ),
                const SizedBox(height: 20,),
                Card(
                  elevation: 3,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child:  ListTile(
                    focusColor: Colors.teal,
                    selectedColor: Colors.teal,
                    onTap: (){
                      setState((){
                        isSelected2=!isSelected2;
                        isSelected1=false;
                      });
                    },
                    dense: true,
                    contentPadding: const EdgeInsets.all(5),
                    leading: Image.asset("assets/images/phone.png",),
                    shape: RoundedRectangleBorder(
                      side: isSelected2==true? const BorderSide(
                        color: Colors.teal,
                        width: 1.5,
                      ):const BorderSide(
                        color: Colors.white,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    subtitle: const Text("Code Send to Your Phone",
                        style:TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26,
                        )),
                    title: const Text("Phone",
                        style:TextStyle(
                          fontSize: 18.0,
                          wordSpacing: 1,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),

                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: NeumorphicButton(
                        onPressed: () {
                          if(isSelected1){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>EmailScreen()));
                          }else if(isSelected2){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PhoneScreen()));
                          }else{
                            Message("Please Select One of them",context);
                          }
                        },
                        style:  NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                            color: buttonColor,
                            depth: 4,
                            intensity: 2,
                            surfaceIntensity: 2),
                        child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
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

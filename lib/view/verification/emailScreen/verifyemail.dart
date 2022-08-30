import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:qcoin/screens/verification/phoneScreen/phoneScreen.dart';
import 'package:qcoin/screens/verification/resetpassword.dart';
import 'package:qcoin/utils/style.dart';
import 'package:qcoin/utils/widgets.dart';
class VerifyEmail extends StatefulWidget {
  VerifyEmail({Key? key,required this.email}) : super(key: key);
  var email;
  @override
  State<VerifyEmail> createState() => _VerifyEmailState(email);
}

class _VerifyEmailState extends State<VerifyEmail> {
  _VerifyEmailState(this.email);
  var email;
  var otp;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 20),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
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
                                builder: (_) => const PhoneScreen()));
                          },
                        ),
                      )),
                ),
                SizedBox(height: 50,),
                Container(
                  width: MediaQuery.of(context).size.width,

                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children:  [
                          const SizedBox(height: 20,),
                          const Text("Verify Phone Number",
                            style:titleStyle,),
                          const SizedBox(height: 10,),
                          const Text("We have Sent Code to Your Phone",style: infoStyle,),
                          const SizedBox(height: 30,),
                          Text(email.toString(),style: infoStyle,),
                          const SizedBox(height: 30,),
                          OTPTextField(
                            length: 4,
                            otpFieldStyle: OtpFieldStyle(
                              focusBorderColor: Colors.teal,
                            ),
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 50,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.teal
                            ),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                            onCompleted: (pin) {
                              setState((){
                                otp=pin;
                              });
                              print("Completed: " + pin);
                            },
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: NeumorphicButton(
                                  onPressed: () {
                                    if(otp==null){
                                     return Message("Enter Your OTP Number", context);
                                    }
                                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ResetPassword()));
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
                                          "Verify",
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
                                          "Send Again",
                                          style: laterStyle,
                                        ),
                                      )),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 30,),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}

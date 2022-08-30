import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:qcoin/screens/verification/emailScreen/verifyemail.dart';

import '../../../utils/style.dart';
import '../../../utils/widgets.dart';
import '../../forgotpassword.dart';
import '../../login.dart';
class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  bool _isValid = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 15),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: _formKey,
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
                    "Enter Your Email \nAddress",
                    style: registerStyle,
                  ),
                  const SizedBox(height: 70,),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        _isValid = EmailValidator.validate(emailController.text);
                        if (emailController.text.isEmpty || _isValid == false) {
                          return Message("Please Enter Valid Email", context);
                        }
                      },
                      decoration:   InputDecoration(
                        prefixIcon:   const Icon(CupertinoIcons.mail,color: Colors.teal,),
                        hintText: "Email Address",
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
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: NeumorphicButton(
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>VerifyEmail(email:emailController.text)));
                            }
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
                  SizedBox(height: 20,),
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
      ),
    );
  }
}

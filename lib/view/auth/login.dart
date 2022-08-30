import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:qcoin/screens/forgotpassword.dart';
import 'package:qcoin/screens/register.dart';
import 'package:qcoin/screens/verifyprofile/verifyprofile.dart';

import '../utils/style.dart';
import '../utils/widgets.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isValid = false;
  bool obscurePassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 10),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(height: 100,),
                const Text(" Login Your\n Account",
                  style: registerStyle,
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:TextFormField(
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
                        prefixIcon: const Icon(Icons.mail_outline_outlined  ,color: Colors.teal,),
                        hintText: "Enter your Email",
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: obscurePassword,
                      textInputAction: TextInputAction.done,

                      validator: (value) {
                        if (value!.length < 8) {
                          return Message("Password should be atlas 8 characters", context);
                        }
                      },
                      decoration:   InputDecoration(
                        suffixIcon: InkWell(
                            onTap: (){
                              obscurePassword=!obscurePassword;
                              setState((){

                              });
                            },
                            child:obscurePassword==true? const Icon(Icons.visibility_off_outlined,color: Colors.teal,)
                                : const Icon(Icons.visibility,color: Colors.teal,)),
                        prefixIcon: const Icon(Icons.lock_outline_rounded,color: Colors.teal,),
                        hintText: "Password",
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>ForgotPassword()));
                    }, child: const Text("Forgot Password?",
                      style:TextStyle(
                        color: Colors.grey,
                        letterSpacing: 0.7,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ) ,))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: NeumorphicButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>VerifyProfile()));
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
                                "Log in",
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text("Create New Account?",style: infoStyle,),
                      TextButton(onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Register()));
                      }, child: const Text("Sign up",style: TextStyle(
                        fontSize: 18.0,
                        wordSpacing: 1,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),))
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                const Align(
                    alignment: Alignment.center,
                    child: Text("Continue with Accounts",style: infoStyle,)),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(235, 201, 199, 30)
                          ),
                          onPressed: (){
                          },
                          child:const Padding(
                            padding:  EdgeInsets.symmetric(vertical: 15),
                            child: Text("GOOGLE",style: TextStyle(color: Colors.pink,fontSize: 16),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(198, 210, 228, 30)
                          ),
                          onPressed: (){
                          },
                          child:const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text("FACEBOOK",style: TextStyle(color: Colors.blueGrey,fontSize: 16),
                            ),
                          )
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

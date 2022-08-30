import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qcoin/Controllers/controllers.dart';
import 'package:qcoin/screens/login.dart';
import 'package:qcoin/utils/style.dart';
import 'package:qcoin/utils/widgets.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isValid = false;
  bool obscurePassword=true;
  MyControllers myController=Get.put(MyControllers());
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
                 Text('create_your_account'.tr,
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
                    child: TextFormField(
                        controller: usernameController,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return Message("Please Enter your name", context);
                          }
                          return null;
                        },
                        decoration:   InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_rounded,color: Colors.teal,),
                            hintText: 'full_name'.tr,
                            labelStyle: const TextStyle(color: Colors.black),
                            contentPadding: const EdgeInsets.all(25),
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
                        hintText: 'enter_your_email'.tr,
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
                            hintText: 'password'.tr,
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
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: NeumorphicButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {

                          }
                        },
                        style:  NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                            color: buttonColor,
                            depth: 4,
                            intensity: 2,
                            surfaceIntensity: 2),
                        child:  Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'register'.tr,
                                style: const TextStyle(
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
                       Text('already_have_an_account'.tr,style: infoStyle,),
                      TextButton(onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Login()));
                      }, child:  Text("sign_in".tr,style: TextStyle(
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
                 Align(
                    alignment: Alignment.center,
                    child: Text("continue_with_accounts".tr,style: infoStyle,)),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(235, 201, 199, 20)
                          ),
                          onPressed: (){
                            myController.changeLanguage('en', 'US');
                          },
                          child:const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text("GOOGLE",style: TextStyle(color: Colors.pink,fontSize: 16),
                      ),
                          )
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(198, 210, 228, 20)
                          ),
                          onPressed: (){
                            myController.changeLanguage('es', 'US');
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

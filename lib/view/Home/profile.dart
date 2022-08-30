
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:qcoin/utils/style.dart';

import '../../utils/const.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
            padding: const EdgeInsets.all(17),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 30,
                ),
                Row (
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/img_11.png',
                              height: 18,
                              width: 18,
                              fit: BoxFit.fill,
                            ))),
                    SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
               Container(
                 height: 90,
                 width: 90,
                 decoration: const BoxDecoration(
                   color: Colors.amber,
                   borderRadius: BorderRadius.all(Radius.circular(60),),
                   image: DecorationImage(
                     image: AssetImage('images/men-removebg-preview.png'),
                     fit: BoxFit.contain
                   )
                 ),
               ),
                const SizedBox(height: 10,),
                const Text("Tom Hillson",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
               const Text("Tomhill@mail.com",style:  TextStyle(color: Colors.grey,fontSize: 13),),
                const SizedBox(height: 40,),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.settings,size: 40,
                    color: buttonColor,),
                    SizedBox(width: 15,),
                    Text("Preferences",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Spacer(),
                    Icon(Icons.navigate_next,size: 25,)
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Icon(Icons.lock_open,size: 40,
                    color: buttonColor,),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const Text("Account Security",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(height: 20,),
                    LinearPercentIndicator(
                      width: 230.0,
                      lineHeight: 8.0,
                      percent: 0.70,
                      progressColor: buttonColor,
                      barRadius: const Radius.circular(10),
                    ),const SizedBox(height: 20,),
                      const Text("Excellent",style: TextStyle(color: Colors.grey,fontSize: 14),)

                ],),
                  const Spacer(),
                  const Icon(Icons.navigate_next,
                  size: 25)

                ],),
                const SizedBox(height: 30,),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.contact_support_outlined,size: 40,
                      color: buttonColor,),
                    SizedBox(width: 15,),
                    Text("Customer Support",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Spacer(),
                    Icon(Icons.navigate_next,size: 25,)
                  ],
                ),
                const SizedBox(height: 30,),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.logout,size: 40,
                      color: buttonColor),
                    SizedBox(width: 15,),
                    Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Spacer(),
                    Icon(Icons.navigate_next,size: 25,)
                  ],
                ),


              ]
              ),
            )
        )
    );
  }
}

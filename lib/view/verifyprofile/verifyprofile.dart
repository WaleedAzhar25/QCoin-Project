import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:qcoin/screens/Home/bottomna.dart';
import 'package:qcoin/screens/verifyprofile/residency/residency.dart';
import 'package:qcoin/screens/verifyprofile/scancard/addcard.dart';
import 'package:qcoin/screens/verifyprofile/residency/scancard.dart';
import 'package:qcoin/utils/style.dart';
import 'yourphoto/camera.dart';
class VerifyProfile extends StatefulWidget {
  const VerifyProfile({Key? key}) : super(key: key);

  @override
  State<VerifyProfile> createState() => _VerifyProfileState();
}

class _VerifyProfileState extends State<VerifyProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 20),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
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
                              Navigator.of(context).pop();
                            },
                          ),
                        )),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*1,
                  child:  InkWell(
                    onTap: ()async{
                      await availableCameras().then(
                            (value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => CameraPage(cameras: value,))));
                    },
                    child: Card(
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                        child: ListTile(
                          leading: SizedBox(
                            width: 50,
                            height: 50,
                            child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(40)),
                                    depth: -1,
                                    lightSource: LightSource.topLeft,
                                    color: const Color.fromRGBO(239, 244, 246, 90)),
                                child: Center(
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.person,
                                      size: 25,
                                      color: Colors.black87,
                                    ),
                                    onPressed: () {

                                    },
                                  ),
                                )),
                          ),
                          title: const Text("Your Photo",style: tileStyle,),
                          subtitle: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text("Look Straight in Your Cam\nFor 30 Seconds",style: subtitleStyle,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*1,
                  child:  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Residency()));
                    },
                    child: Card(
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                        child: ListTile(
                          leading: SizedBox(
                            width: 50,
                            height: 50,
                            child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(40)),
                                    depth: -1,
                                    lightSource: LightSource.topLeft,
                                    color: const Color.fromRGBO(239, 244, 246, 90)),
                                child: Center(
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.location_on_sharp,
                                      size: 25,
                                      color: Colors.black87,
                                    ),
                                    onPressed: () {

                                    },
                                  ),
                                )),
                          ),
                          title: const Text("Residency",style: tileStyle,),
                          subtitle: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text("Proof Of Your Residency Via\nPassport / ID Card",style: subtitleStyle,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*1,
                  child:  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AddCard()));
                    },
                    child: Card(
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                        child: ListTile(
                          leading: SizedBox(
                            width: 50,
                            height: 50,
                            child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(40)),
                                    depth: -1,
                                    lightSource: LightSource.topLeft,
                                    color: const Color.fromRGBO(239, 244, 246, 90)),
                                child: Center(
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.credit_card_rounded,
                                      size: 25,
                                      color: Colors.black87,
                                    ),
                                    onPressed: () {

                                    },
                                  ),
                                )),
                          ),
                          title: const Text("Scan Card",style: tileStyle,),
                          subtitle: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text("Scan Your Both Sides of\nYour Bank Card",style: subtitleStyle,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.12,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: NeumorphicButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>BottomNav()));
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
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

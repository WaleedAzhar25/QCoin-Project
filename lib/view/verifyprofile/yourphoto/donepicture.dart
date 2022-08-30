import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qcoin/screens/verifyprofile/verifyprofile.dart';

import '../../../utils/style.dart';
class DonePicture extends StatefulWidget {
   DonePicture({Key? key,required this.img}) : super(key: key);
final img;
  @override
  State<DonePicture> createState() => _DonePictureState(img);
}

class _DonePictureState extends State<DonePicture> {
  _DonePictureState(this.img);
  var img;
  @override
  Widget build(BuildContext context) {
    print(img);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 1,
              child: Image.file(File(img),fit: BoxFit.fill,),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              depth: -1,
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: Center(
                            child: IconButton(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 0),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    size: 20,
                                    color: Colors.black87,
                                  )),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          )),
                    ),
                    const SizedBox(width:15,),
                    Text("Photo",style: Theme.of(context).textTheme.headline5
                      ,)
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 40,
              child:SizedBox(
              height: 70,
              width: 70,
              child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(50)),
                      depth: -4,
                      lightSource: LightSource.topLeft,
                      color: buttonColor),
                  child: Center(
                    child: IconButton(
                      icon: Container(
                          margin: const EdgeInsets.only(left: 0,bottom: 10),
                          child: const Icon(
                            Icons.done_outline_sharp,
                            size: 40,
                            color: Colors.white,
                          )),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>VerifyProfile()));
                      },
                    ),
                  )),
            ),
            )


            // if (pictureFile != null)
            //   Image.network(
            //     pictureFile!.path,
            //     height: 200,
            //   )
            // //Android/iOS
            // // Image.file(File(pictureFile!.path)))
          ],
        ),
      ),
    );
  }
}

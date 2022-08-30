import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:qcoin/screens/verifyprofile/verifyprofile.dart';
import 'package:qcoin/screens/verifyprofile/yourphoto/donepicture.dart';

import '../../../utils/style.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription>? cameras;
  const CameraPage({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  XFile? pictureFile;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![0],
      ResolutionPreset.max,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 1,
              child: CameraPreview(controller),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height*0.1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NeumorphicButton(
                          onPressed: () async {
                            pictureFile = await controller.takePicture();
                            if(pictureFile!.path.isNotEmpty){
                              await GallerySaver.saveImage(pictureFile!.path).then((path) => {
                                print(path.toString()),

                              });
                              setState((){
                                pictureFile;
                              });
                              print("Hello  kvjnc kad ${pictureFile!.path}");
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>DonePicture(img: pictureFile!.path)));

                            }

                          },
                          style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(15)),
                              color: buttonColor,
                              depth: -1,
                              ),
                          child: const Center(
                              child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Take Photo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
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


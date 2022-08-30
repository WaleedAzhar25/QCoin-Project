import 'package:flutter/material.dart';

import '../../utils/const.dart';
class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
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
                  SizedBox(width: 20,),
                  const Text(
                    "QR Code",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(thickness: 1,),
              SizedBox(height: 20,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child: Image.asset('images/img_18.png',height: MediaQuery.of(context).size.height*0.5,width: MediaQuery.of(context).size.width,))
             , SizedBox(height: 10,),
              Container(
                height: 60,
                margin: EdgeInsets.all(40),
                width: double.infinity,
                child: FlatButton(
                  child: Text("Scan QR code"),
                  color: darkGreen,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ), onPressed: () {  },
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

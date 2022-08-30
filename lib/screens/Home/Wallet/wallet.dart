import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:qcoin/model/employesmodel.dart';
import 'package:qcoin/screens/Home/Wallet/newcard.dart';
import 'package:qcoin/screens/Home/bottomna.dart';
import '../../../utils/const.dart';
import 'carddetail.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 17,top: 17,bottom: 17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>const BottomNav()));

                          },
                          icon: Image.asset(
                            'images/img_11.png',
                            height: 18,
                            width: 18,
                            fit: BoxFit.fill,
                          ))),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "My Wallet",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: NormalText(
                    text: 'Available Balance',
                    size: 17,
                    fw: FontWeight.w400,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: NormalText(
                    size: 27,
                    text: '\$27,698.87',
                    fw: FontWeight.w700,
                  )),
              SizedBox(
                height: 60,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: NormalText(
                      fw: FontWeight.w600, size: 17, text: "My Cards")),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NewCard()));
                    },
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      strokeWidth: 2,
                      radius: Radius.circular(15),
                      dashPattern: [9, 5],
                      color: darkGreen,
                      // padding: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        child: Container(
                          height: 200,
                          width: 100,
                          color: lightGreen,
                          child: Center(
                            child: Icon(
                              Icons.add_circle_outlined,
                              size: 40,
                              color: darkGreen,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      height: 210,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int i) {
                            return GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CardDetail()));
                              },
                              child: Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Card(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30))),
                                  color: darkGreen,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.wallet_outlined,
                                              color: Colors.white,
                                            ),
                                            Spacer(),
                                            Text(
                                              '••••',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "1411",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        const Text(
                                          'Mastercard',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Platinum',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                            const Spacer(),
                                            Image.asset(
                                              'images/img_15.png',
                                              height: 40,
                                              width: 50,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: NormalText(
                      fw: FontWeight.w600, size: 17, text: "Send To")),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    strokeWidth: 2,
                    radius: Radius.circular(15),
                    dashPattern: [9, 5],
                    color: darkGreen,
                    // padding: EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: lightGreen,
                        child: Center(
                          child: Icon(
                            Icons.add_circle_outlined,
                            size: 40,
                            color: darkGreen,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: employContents.length,
                          itemBuilder: (BuildContext context, int i) {
                            return Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                color: lightGreen,
                                child: Container(
                                                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration:  BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(20),),
                                          image: DecorationImage(
                                              image: AssetImage(employContents[i].image),
                                              fit: BoxFit.contain
                                          )
                                      ),
                                    ),
                                      SizedBox(height: 5,),
                                      Text(employContents[i].name,style: TextStyle(color: darkGreen,fontSize: 16),)
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: NormalText(
                      fw: FontWeight.w600, size: 17, text: "Transaction")),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 7,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder:(
                        BuildContext context,int i){
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 110,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(
                        child: ListTile(
                          leading:    Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.all(Radius.circular(20),),
                                image: DecorationImage(
                                    image: AssetImage('images/men-removebg-preview.png'),
                                    fit: BoxFit.contain
                                )
                            ),
                          ),
                          title: NormalText(text: "Avicii Ronaldo",fw: FontWeight.w500,size: 17,),
                          subtitle: Text("26 .11 .2021  -  5:15 AM",style: TextStyle(color: Colors.grey,fontSize: 13),),
                          trailing: Text("-0.056",style: TextStyle(color: darkGreen,fontSize: 15,fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),
                  );

                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}


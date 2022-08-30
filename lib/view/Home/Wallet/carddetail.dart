import 'package:flutter/material.dart';
import 'package:qcoin/utils/const.dart';
class CardDetail extends StatefulWidget {
  const CardDetail({Key? key}) : super(key: key);

  @override
  State<CardDetail> createState() => _CardDetailState();
}

class _CardDetailState extends State<CardDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(
              height: 10,
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
                          Navigator.of(context).pop();
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
                  "Card Detail",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
                const SizedBox(height: 20,),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Center(
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                            color: lightGreen,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width * 1,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.wallet_outlined,
                                    color: Colors.white,
                                  ),
                                  Spacer(),
                                  Text(
                                    '•••',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30),
                                  ),

                                ],
                              ),
                              const Text("5698   56254   6786   9979",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Cad Holder",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15),),
                                      Text(
                                        'Matt Revas',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                      ),
                                    ],
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
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: NormalText(
                        fw: FontWeight.w600, size: 20, text: "Transaction")),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
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
                            shape: const RoundedRectangleBorder(
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
            ]
            ),
          ),
        ),
      ),
    );
  }
}

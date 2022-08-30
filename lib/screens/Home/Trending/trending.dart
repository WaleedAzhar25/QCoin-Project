import 'package:flutter/material.dart';
import 'package:qcoin/screens/Home/Trending/btc1.dart';

import '../../../model/trendingcontent.dart';
import '../../../utils/const.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const   SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const   Text(
                    "Trending",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'images/elipsis.png',
                            height: 18,
                            width: 18,
                            fit: BoxFit.fill,
                          )))
                ],
              ),
              const   SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  // disabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.white),
                  //     borderRadius: BorderRadius.all(Radius.circular(30))
                  // ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  errorBorder: InputBorder.none,

                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(
                    Icons.sort_outlined,
                    color: darkGreen,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: trendContent.length,
                  itemBuilder: (BuildContext context,int i){
                    return  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>BTC1()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            TrendingIcon(color:trendContent[i].iconContainerColor, path: trendContent[i].iconImage),
                            SizedBox(width: 10,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TrendingTitle(text: trendContent[i].title),
                                SizedBox(height: 5,),
                                TrendingSubTitle(text:trendContent[i].subTitle),
                              ],
                            ),Spacer(),
                            Image.asset(trendContent[i].graphImage,width: MediaQuery.of(context).size.width*0.220,height: 45,),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TrendingPrice(text: trendContent[i].trendingPrice),
                                TrendingpercentageText(color: trendContent[i].percentageColor, text:trendContent[i].trendingPercentage)
                              ],
                            )

                          ],
                        ),
                      ),
                    );
                  })

            ],
          ),
        ),
      ),
    );
  }
}

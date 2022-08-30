import 'package:flutter/material.dart';
import 'package:qcoin/model/trendingcontent.dart';
import '../../model/portfoliocontent.dart';
import '../../utils/const.dart';
import 'allportfolio.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(17),
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
                    "Home",
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
              const  SizedBox(height: 30),
              Stack(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                     height: 135,
                     width: MediaQuery.of(context).size.width*0.8,
                      child: Card(
                        color: backgroundColor,
                        elevation: 0.4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ExplainText(text: 'My Balance'),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const  Text(
                                    '\$ 38,528.20',
                                    style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.bold),
                                  ),
                                  const    Spacer(),
                                  Container(
                                    height: 30,
                                    width: 80,
                                    decoration:const  BoxDecoration(
                                        color: lightGreen,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                    child: const Center(
                                      child: Text(
                                        "⌃ 0.88%",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: darkGreen),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const   SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.auto_graph,
                                    color: lightGreen,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$9.987",
                                    style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                                  )
                                ],
                              ),


                            ],
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>PortFolio()));
                  },
                  child: const Text("Portfolio",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),
              const  SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width*1,
                // height: MediaQuery.of(context).size.height*0.4,
                height: 170,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: portfolioContents.length,
                    itemBuilder: (BuildContext context,int i){
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PortFolio()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.7,
                          child: Card(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child:Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TitleText(text:portfolioContents[i].title ,),
                                          SubTitleText(text: portfolioContents[i].subTitle,),
                                        ],
                                      ),
                                      const Spacer(),
                                      PortfolioIcon(path: portfolioContents[i].path, color: portfolioContents[i].containerColor,),

                                    ],
                                    //
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      PortfolioPrice(text: portfolioContents[i].portfolioPrice),
                                      Spacer(),
                                      Container(
                                        height: 25,
                                        width: 60,
                                        decoration:  BoxDecoration(
                                            color: portfolioContents[i].percentageContainerColor,
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10))),
                                        child:  Center(
                                            child: PercentageText(text: portfolioContents[i].portfolioPercentage, color: portfolioContents[i].percentageTextColor,)
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
                    }),
              ),
              const SizedBox(height: 20,),
              const Text("Trending",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
              const SizedBox(height: 10,),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: trendContent.length,
                  itemBuilder: (BuildContext context,int i){
                    return  Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          TrendingIcon(color:trendContent[i].iconContainerColor, path: trendContent[i].iconImage),
                          const SizedBox(width: 10,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TrendingTitle(text: trendContent[i].title),
                              const SizedBox(height: 5,),
                              TrendingSubTitle(text: trendContent[i].subTitle),
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
                    );
                  })

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../model/portfoliocontent.dart';
import '../../utils/const.dart';

class PortFolio extends StatefulWidget {
  const PortFolio({Key? key}) : super(key: key);

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
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
                const  SizedBox(width: 20,),
                  const Text(
                    "Portfolio",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: Card(
                  color: Color.fromARGB(255,220, 239, 238),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      child: Row(

                        children: [
                          Image.asset("images/img_12.png",height: 50,width:80 ,),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Title(color: lightGreen, child: const Text("Referral",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color.fromARGB(255,11, 157, 142)),)),
                              const Text.rich(
                                TextSpan(
                                    text: 'Invite your friend',
                                    style: TextStyle(fontSize: 16,color: Color.fromARGB(255,11, 157, 142)),
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: ' to join on',
                                        style: TextStyle(fontSize: 15,color: Colors.black),
                                      )
                                    ]
                                )),
                              const Text('Jiko and get up to 2,500,000',style: TextStyle(fontSize: 15),)
                            ],
                          ),
                          const SizedBox(width: 20,),
                          const Icon(Icons.navigate_next,size: 30,color: Color.fromARGB(255,11, 157, 142),)
                        ],
                      ),
                    )),
              ),
            const SizedBox(height: 30,),
           const  Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Assets",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: portfolioContents.length,
                    itemBuilder: (BuildContext context,int i){
                      return SizedBox(
                        height:180,
                        width: MediaQuery.of(context).size.width*0.7,
                        child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child:Container(margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10,),
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
                                const SizedBox(height: 40,),
                                Row(
                                  children: [
                                    PortfolioPrice(text: portfolioContents[i].portfolioPrice),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 60,
                                      decoration:  BoxDecoration(
                                          color: portfolioContents[i].percentageContainerColor,
                                          borderRadius:
                                          BorderRadius.all(const Radius.circular(10))),
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
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

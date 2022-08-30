import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:onboarding/onboarding.dart';
import 'package:qcoin/screens/register.dart';
import 'package:qcoin/utils/style.dart';
class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

   int index=0;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,

        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/onboarding1.png',
                    color: Color.fromRGBO(12, 177, 160, 50)),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Fastest Growing ',
                      style:  titleStyle,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Crypto App',
                      style:  titleStyle,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),

               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text(
                        'Running your Crypto App',
                        style: infoStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'is easier with Socially',
                        style: infoStyle,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,

        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/onboarding2.png',
                    color: Color.fromRGBO(12, 177, 160, 50)),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Secure Reliable ',
                      style:  titleStyle,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Crypto App',
                      style:  titleStyle,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text(
                        'Running your Crypto App',
                        style: infoStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'is easier with Socially',
                        style: infoStyle,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,

        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/onboarding3.png',
                    color: Color.fromRGBO(12, 177, 160, 50)),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Manage Payments ',
                      style:  titleStyle,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'And Cashouts',
                      style:  titleStyle,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),

               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text(
                        'Running your Crypto App',
                        style: infoStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'is easier with Socially',
                        style: infoStyle,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,

        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Image.asset('assets/images/onboarding4.png',
                  color: Colors.teal),
               const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0,vertical: 20),
                child: Text(
                  'Welcome ',
                  style:  TextStyle(
                    fontSize: 30.0,
                    wordSpacing: 1,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text(
                        'Stop on top by giving the best',
                        style: infoStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Crypto service to the customer',
                        style: infoStyle,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return Container(
              margin: const EdgeInsets.only(bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(""),
                  Spacer(),
                  onboardingPagesList.length-1==index?const Text(""):
                  DotsIndicator(
                    decorator:  DotsDecorator(
                      activeColor: Colors.teal,
                      color: const Color.fromRGBO(174, 225,220, 30),
                      size: const Size(20, 9),
                      activeSize: const Size(45,9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    dotsCount: pagesLength,
                    position: double.parse(index.toString()),

                  ),
                  const Spacer(),

                  onboardingPagesList.length-1==index?
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
                              depth: 8,
                              lightSource: LightSource.topLeft,
                              color: Colors.white
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward,size: 30,color: Colors.blue,),
                            onPressed: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>const Register()));
                            },
                          )
                      ),
                    ),
                  ): const Text(''),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

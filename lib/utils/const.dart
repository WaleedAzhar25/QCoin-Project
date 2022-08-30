import 'package:flutter/material.dart';
class HeadingText extends StatelessWidget {
  HeadingText({Key? key, required this.text,}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: TextAlign.center,style: const TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w600),);

  }
}
class ExplainText extends StatelessWidget {
  ExplainText({Key? key, required this.text,}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: TextAlign.center,style: const TextStyle(color: Colors.black,fontSize: 17),);

  }
}
class TitleText extends StatelessWidget {
  TitleText({required this.text,Key? key}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: 17,color: Colors.grey,
    ),);
  }
}
class SubTitleText extends StatelessWidget {
  SubTitleText({required this.text,Key? key}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: TextAlign.start,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 19),);
  }
}
class PortfolioIcon extends StatelessWidget {
  PortfolioIcon({required this.color,required this.path,Key? key}) : super(key: key);
  Color color;
  String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(40),
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 25,width: 25,child: Image.asset(path),)
        ],
      ),
    );
  }
}
class PortfolioPrice extends StatelessWidget {
  PortfolioPrice({required this.text,Key? key}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text('\$$text',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),);
  }
}
class PercentageText extends StatelessWidget {
  PercentageText({required this.color,required this.text,Key? key}) : super(key: key);
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Text("⌃ $text%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: color),);
  }
}
class TrendingTitle extends StatelessWidget {
  TrendingTitle({required this.text,Key? key}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),);
  }
}
class TrendingSubTitle extends StatelessWidget {
  TrendingSubTitle({required this.text,Key? key}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Colors.grey,fontSize: 15,),);
  }
}
class TrendingIcon extends StatelessWidget {
  TrendingIcon({required this.color,required this.path,Key? key}) : super(key: key);
  Color color;
  String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(40),
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 30,width: 30,child: Image.asset(path),)
        ],
      ),
    );
  }
}

class TrendingPrice extends StatelessWidget {
  TrendingPrice({required this.text,Key? key}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text('\$$text',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),);
  }
}
class TrendingpercentageText extends StatelessWidget {
  TrendingpercentageText({required this.color,required this.text,Key? key}) : super(key: key);
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Text("⌃ $text%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: color),);
  }
}
class NormalText extends StatelessWidget {
  NormalText({required this.fw,required this.size,required this.text,Key? key}) : super(key: key);
  String text;
  double size;
  FontWeight fw;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size,color: Colors.black,fontWeight: fw),);
  }
}
const lightGreen=Color.fromARGB(255,175, 225, 221);
const darkGreen=Color.fromARGB(255,12, 177, 160);
const backgroundColor=Color.fromARGB(255,242, 244, 246);

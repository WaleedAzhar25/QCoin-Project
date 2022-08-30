import 'dart:ui';

class TrendingContent {
  String title;
  String subTitle;
  String trendingPrice;
  String trendingPercentage;
  final Color percentageColor;
  final Color iconContainerColor;
  String iconImage;
  String graphImage;

  TrendingContent(
      {required this.title,
      required this.subTitle,
      required this.trendingPrice,
      required this.trendingPercentage,
      required this.percentageColor,
      required this.iconContainerColor,
      required this.iconImage,
      required this.graphImage});
}

List<TrendingContent> trendContent = [
  TrendingContent(
      title: 'Bitcoin',
      subTitle: 'BTC',
      trendingPrice: '41,129.12',
      trendingPercentage: '0.55',
      percentageColor: const Color.fromARGB(255,255, 124, 116),
      iconContainerColor: const Color.fromARGB(255,248, 165, 65),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_9.png'),
  TrendingContent(
      title: 'Tether',
      subTitle: 'USDT',
      trendingPrice: '19,292.16',
      trendingPercentage: '01.87',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255,28, 158, 121),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_10.png'),
  TrendingContent(
      title: 'Etherium',
      subTitle: 'ETH',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255,127, 110, 233),
      iconImage: 'images/img_7.png',
      graphImage: 'images/img_10.png'),
  TrendingContent(
      title: 'Binance',
      subTitle: 'BNB',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255, 248, 165, 65),
      iconImage: 'images/img_13.png',
      graphImage: 'images/img_9.png'),
  TrendingContent(
      title: 'XRP',
      subTitle: 'XRP',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255, 0, 0, 0),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_9.png'),
  TrendingContent(
      title: 'Bitcoin',
      subTitle: 'BTC',
      trendingPrice: '41,129.12',
      trendingPercentage: '0.55',
      percentageColor: const Color.fromARGB(255,255, 124, 116),
      iconContainerColor: const Color.fromARGB(255,248, 165, 65),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_9.png'),
  TrendingContent(
      title: 'Tether',
      subTitle: 'USDT',
      trendingPrice: '19,292.16',
      trendingPercentage: '01.87',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255,28, 158, 121),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_10.png'),
  TrendingContent(
      title: 'Etherium',
      subTitle: 'ETH',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255,127, 110, 233),
      iconImage: 'images/img_7.png',
      graphImage: 'images/img_10.png'),
  TrendingContent(
      title: 'Binance',
      subTitle: 'BNB',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255, 248, 165, 65),
      iconImage: 'images/img_13.png',
      graphImage: 'images/img_9.png'),
  TrendingContent(
      title: 'XRP',
      subTitle: 'XRP',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255, 0, 0, 0),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_9.png'),
  TrendingContent(
      title: 'Bitcoin',
      subTitle: 'BTC',
      trendingPrice: '41,129.12',
      trendingPercentage: '0.55',
      percentageColor: const Color.fromARGB(255,255, 124, 116),
      iconContainerColor: const Color.fromARGB(255,248, 165, 65),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_9.png'),
  TrendingContent(
      title: 'Tether',
      subTitle: 'USDT',
      trendingPrice: '19,292.16',
      trendingPercentage: '01.87',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255,28, 158, 121),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_10.png'),
  TrendingContent(
      title: 'Etherium',
      subTitle: 'ETH',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255,127, 110, 233),
      iconImage: 'images/img_7.png',
      graphImage: 'images/img_10.png'),
  TrendingContent(
      title: 'Binance',
      subTitle: 'BNB',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255, 248, 165, 65),
      iconImage: 'images/img_13.png',
      graphImage: 'images/img_9.png'),
  TrendingContent(
      title: 'XRP',
      subTitle: 'XRP',
      trendingPrice: '27,192.19',
      trendingPercentage: '0.67',
      percentageColor: Color.fromARGB(255,28, 158, 121),
      iconContainerColor: Color.fromARGB(255, 0, 0, 0),
      iconImage: 'images/img_8.png',
      graphImage: 'images/img_9.png'),
];

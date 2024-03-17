import 'package:flutter/material.dart';

class ArticleSummary extends StatelessWidget {
  const ArticleSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return ArticleSummaryStateful();
  }
}

class ArticleSummaryStateful extends StatefulWidget {
  const ArticleSummaryStateful({super.key});
  @override
  State<ArticleSummaryStateful> createState() => _ArticleSummaryState();
}

class _ArticleSummaryState extends State<ArticleSummaryStateful> {
  String? code='005930';
  String url='https://finance.naver.com/item/main.naver?code=';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed : () {
            Navigator.pop(context);
          }
      ),
      title: Text("분석화면")),
      body: SingleChildScrollView(
        child:Center(
          child: Column(
            children:[
              Image.network('https://ssl.pstatic.net/imgfinance/chart/item/area/day/$code.png',
                  height:MediaQuery.of(context).size.height * 0.25, width: MediaQuery.of(context).size.width * 0.9, fit: BoxFit.fill),
              Container(color: Colors.lightBlue, width: MediaQuery.of(context).size.width * 0.8, height: MediaQuery.of(context).size.width * 0.8),
              Container(color: Colors.amber, width: MediaQuery.of(context).size.width * 0.8, height: MediaQuery.of(context).size.width * 0.8),
              Container(color: Colors.red, width: MediaQuery.of(context).size.width * 0.8, height: MediaQuery.of(context).size.width * 0.8),
            ]
          ),
        )
      )
    );
  }


}


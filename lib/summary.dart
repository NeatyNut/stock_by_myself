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


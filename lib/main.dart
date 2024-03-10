import 'package:flutter/material.dart';
import 'webview.dart';
import 'summary.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => WebView(),
      '/summary': (context) => ArticleSummary(),
    });
  }
}

void main() {
  runApp(MyApp());
}
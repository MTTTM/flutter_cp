import 'package:flutter/material.dart';
import 'package:caipiao/pages/MainPage.dart';
import 'package:flutter/rendering.dart'; 
void main() {
  // debugPaintSizeEnabled=true;
  runApp(MyApp());
}
 

const int ThemeColor = 0xFFC91B3A;
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
     theme: new ThemeData(
        primaryColor: Colors.brown,
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor :Colors.black87
      ),
      home: MainPageWidget(),//启动MainPage
    );
  }
}
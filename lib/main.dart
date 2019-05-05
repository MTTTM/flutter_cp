import 'package:flutter/material.dart';
import 'package:caipiao/pages/MainPage.dart';
import 'package:flutter/rendering.dart'; 
void main() {
  debugPaintSizeEnabled=true;
  runApp(MyApp());
}
 

const int ThemeColor = 0xFFC91B3A;
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
     theme: new ThemeData(
        primaryColor: Color(ThemeColor),
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: Color(ThemeColor),
          size: 35.0,
        ),
      ),
      home: MainPage(),//启动MainPage
    );
  }
}
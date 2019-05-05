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
        primaryColor: Color.fromRGBO(81, 81, 89, 1),
        primarySwatch: Colors.brown,//primarySwatch只有几大类型，但是可以通过其他参数覆盖它
        scaffoldBackgroundColor :Colors.black87
      ),
      home: MainPageWidget(),//启动MainPage
    );
  }
}
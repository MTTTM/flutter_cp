import 'package:flutter/material.dart';
import 'package:caipiao/pages/FindPage.dart';
import 'package:caipiao/pages/HomePage.dart';
import 'package:caipiao/pages/MinePage.dart';
 

class MainPageWidget extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '发现', '我的'];
  /*
   * 存放三个页面，跟fragmentList一样
   */
  var _pageList;
 
  /*
   * 根据选择获得对应的normal或是press的icon
   */
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }
  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff1296db)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }
  /*
   * 根据image路径获取图片
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }
 
 
  void initData() {
    /*
     * 初始化选中和未选中的icon
     */
    tabImages = [
      [
       getTabImage('images/components/tabBar2/home_1@2x.png'),
       getTabImage('images/components/tabBar2/home@2x.png')
      ],
      [
       getTabImage('images/components/tabBar2/live_1@2x.png'),
       getTabImage('images/components/tabBar2/live@2x.png')
      ],
      [
        getTabImage('images/components/tabBar2/money_1@2x.png'), 
        getTabImage('images/components/tabBar2/money@2x.png')
      ],
      [
        getTabImage('images/components/tabBar2/money_1@2x.png'), 
        getTabImage('images/components/tabBar2/money@2x.png')
      ],
      [
        getTabImage('images/components/tabBar2/my_1@2x.png'), 
        getTabImage('images/components/tabBar2/my@2x.png')
      ]
    ];
    /*
     * 三个子界面
     */
    _pageList = [
      new HomePage(),
      new FindPage(),
      new MinePage(),
    ];
  }
 
  @override
  Widget build(BuildContext context) {
    //初始化数据
    initData();
    return Scaffold(
        body: _pageList[_tabIndex],
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0), title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1), title: getTabTitle(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2), title: getTabTitle(2)),
          ],
          type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 24.0,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ));
  }
}
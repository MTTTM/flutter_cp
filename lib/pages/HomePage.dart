import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import "package:caipiao/component/Adapt.dart";

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new Page();
  }
}

class Page extends State<HomePage> {
  final List<String> items = [
    "images/components/banner/mobile_1.jpg",
    "images/components/banner/mobile_2.jpg",
    "images/components/banner/mobile_3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Image.asset("images/components/logo/logo.png",
            fit: BoxFit.fill, height: Adapt.px(47), width: Adapt.px(229)),
        centerTitle: true,
        actions: <Widget>[
          Center(
            child: Padding(
              child: new Text("注册"),
              padding: EdgeInsets.only(right: 20.0),
            ),
          )
        ],
        leading: Center(
          child: Padding(
            child: new Text("登录"),
            padding: EdgeInsets.only(left: 20.0),
          ),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: Adapt.px(280),
            width: Adapt.px(750),
            child: new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.asset(
                  items[index],
                  fit: BoxFit.fill,
                  height: Adapt.px(280),
                  width: Adapt.px(750),
                );
              },
              itemCount: items.length,
              pagination: new SwiperPagination(),
              control: new SwiperControl(),
            ),
          ),
          new Container(
              color: Theme.of(context).primaryColorDark,
              height: 30,
              padding: EdgeInsets.only(left:10.0,right:10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right:10.0),
                    child: Image.asset("images/pages/home/notice.png",
                        height: Adapt.px(40), width: Adapt.px(46)),
                  ),
                  Expanded(
                    child: new MarqueeWidget(
                      text: "ListView即滚动列表控件，能将子控件组成可滚动的列表。当你需要排列的子控件超出容器大小",
                      textStyle: new TextStyle(
                          fontSize: 16.0, color: Theme.of(context).accentColor),
                      scrollAxis: Axis.horizontal,
                    ),
                  )
                ],
              )),
          quickBar(context),
          header(context),
          header(context),
          header(context),
          header(context),
          header(context),
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('首页'));
  }

  Widget header(BuildContext context) {
    return new Image.network(
      'http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg',
    );
  }

  Widget quickBar(BuildContext context) {
    return new Container(
        height: Adapt.px(270),
        alignment: Alignment.center,
        color: Theme.of(context).primaryColor,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.7,
          ),
          children: <Widget>[
            new QuickBarItem(
                img: "images/pages/home/drawings.png", text: "充值/提现"),
            new QuickBarItem(
                img: "images/pages/home/betRecord.png", text: "投注记录"),
            new QuickBarItem(
                img: "images/pages/home/discounts.png", text: "优惠活动"),
            new QuickBarItem(
                img: "images/pages/home/service.png", text: "在线客服"),
          ],
        ));
  }
}

class QuickBarItem extends StatelessWidget {
  final String img;
  final String text;
  QuickBarItem({Key key, @required this.img, @required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            img,
            width: Adapt.px(109),
            height: Adapt.px(109),
            fit: BoxFit.fill,
          ),
          Padding(
              child: Text(text,
                  style: TextStyle(
                      fontSize: Adapt.px(24),
                      color: Color.fromARGB(255, 155, 155, 155))),
              padding: EdgeInsets.only(top: 10.0))
        ]);
  }
}

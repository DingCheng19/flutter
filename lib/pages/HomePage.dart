import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:position/model/Position.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
    new Position('ITエンジニア', '30~80', '株式会社A', '山田', '京都市中京区烏丸通二条上ル蒔絵屋町263'),
  ];

  Widget positionView(Position position) {
    return Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        margin: const EdgeInsets.fromLTRB(0,0,0,8.0),
        padding: const EdgeInsets.all(8.0),
        child: Column(
            //children: [Row(children: [Text('sdfsdf')],),Row(children: [Text('fffff')],)],
            children: [
              Row(
                children: [
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Text(position.title,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text(position.salary,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                                fontWeight: FontWeight.bold))
                      ])),
                ],
              ),
              SizedBox(width: 8),
              Row(
                children: [
                  Text(position.detail,
                      style: TextStyle(fontSize: 16, color: Colors.black87))
                ],
              ),
              SizedBox(width: 8),
              Row(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            //头像半径
                            radius: 10,
                            //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                            backgroundImage: NetworkImage(
                                'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                          ),
                          SizedBox(width: 8),
                          Text(position.name)
                        ],
                      ),
                      Text(position.address)
                    ],
                  ))
                ],
              )
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //     decoration: new BoxDecoration(
              //       color: Colors.red,
              //     ),
              //   height: 150,
              //   child: Text('fasdfadf',style: TextStyle(backgroundColor: Colors.green),))
              //  child: Expanded(child:Row(children: [Text('fasdfadf',style: TextStyle(backgroundColor: Colors.green),)])))
              // Row(
              //   children: [
              //     Text(
              //       position.detail,
              //       maxLines: 10,
              //       textAlign: TextAlign.left,
              //       overflow: TextOverflow.visible,
              //     )
              //   ],
              // )
            ]));
  }

  Widget searchButton(String title) {
    return TextButton(
      //child: Text(title,style: TextStyle(fontSize: 18),),
      //child: Row(children: [Text(title,style: TextStyle(fontSize: 18)),Image.asset('',width: 20,height: 20,)]),
      child: Row(children: [
        Text(title, style: TextStyle(fontSize: 14)),
        Icon(
          Icons.signal_cellular_4_bar,
          size: 14,
          color: Colors.grey,
          textDirection: TextDirection.ltr,
        )
      ]),
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(4)),
        //更优美的方式来设置
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.focused) &&
                !states.contains(MaterialState.pressed)) {
              //获取焦点时的颜色
              return Colors.blue;
            } else if (states.contains(MaterialState.pressed)) {
              //按下时的颜色
              return Colors.deepPurple;
            }
            //默认状态使用灰色
            return Colors.grey[850];
          },
        ),
        //背景颜色
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          //设置按下时的背景颜色
          if (states.contains(MaterialState.pressed)) {
            return Colors.blue[200];
          }
          //默认不使用背景颜色
          return Colors.grey[300];
        }),
      ),
    );
  }

  Widget build(BuildContext context) {
    Widget searchBar = new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          searchButton('東京'),
          SizedBox(width: 8),
          searchButton('システムエンジニア'),
          SizedBox(width: 8),
          searchButton('キーワード'),
          SizedBox(width: 8),
        ],
      ),
    );

    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('システムエンジニア'),
        ),
        body: Container(
          decoration: new BoxDecoration(
            color: Colors.grey[300],
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  child: searchBar,
                ),
                flex: 0,
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                //padding: const EdgeInsets.all(8.0),
                child: ListView(children: getPositionView()),
              )),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getPositionView() {
    List<Widget> list = [];
    for (var i = 0; i < data.length; i++) {
      list.add(positionView(data[i]));
    }
    return list;
  }
}

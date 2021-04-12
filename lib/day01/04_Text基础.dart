import 'package:flutter/material.dart';

main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Text基础"),
          ),
          body: PCBodyWidget(),
        )
    );
  }
}

class PCBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PCContentBody();
  }
}

class PCContentBody extends StatefulWidget {
  @override
  // _PCContentBodyState createState() => _PCContentBodyState();
  _PCContentBodyRichState createState() => _PCContentBodyRichState();
}

class _PCContentBodyState extends State<PCContentBody> {
  @override
  Widget build(BuildContext context) {
    return  Text(
      "《定风波》 苏轼 \n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      textAlign: TextAlign.center,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,//超出部分的显示样式
      textScaleFactor: 1.5,
      style: TextStyle(
          fontSize: 25,
          color: Colors.orange
      ),
    );
  }
}

//富文本
class _PCContentBodyRichState extends State<PCContentBody> {
  @override
  Widget build(BuildContext context) {
    return  Text.rich(
      TextSpan(
        children : [
          TextSpan(text: "《定风波》",style: TextStyle(fontSize: 20,color: Colors.pinkAccent)),
          TextSpan(text: "苏轼", style: TextStyle(fontSize: 18, color: Colors.redAccent)),
          TextSpan(text: "\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。")
        ],

      ),

      textAlign: TextAlign.center,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,//超出部分的显示样式
      textScaleFactor: 1.5,
      style: TextStyle(
          fontSize: 15,
          color: Colors.orange
      ),
    );
  }
}

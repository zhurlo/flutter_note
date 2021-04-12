import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter"),
        ),
        body: Center(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                    value: true,
                    onChanged: (value) => print("hello world")
                ),
                Text("同意协议",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 20)
                )
              ],
            )
        ),
      ),

    ),
  );
}


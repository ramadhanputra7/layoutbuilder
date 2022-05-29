import 'package:flutter/material.dart';
import 'package:layoubuilder/mycontainer3.dart';

import 'mycontainer.dart';
import 'mycontainer2.dart';
import 'mycontainer4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final myAppBar = AppBar(title: Text("Layout Builder"));
    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;
    return Scaffold(
        appBar: myAppBar,
        body: ListView(children: <Widget>[
          Row(
            children: [
              Container(
                width: widthApp,
                height: heightBody * 0.3,
                color: Color.fromARGB(255, 112, 107, 107),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyContainer(widthApp),
                    MyContainer(widthApp),
                    MyContainer(widthApp),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: widthApp,
                height: heightBody * 0.3,
                color: Color.fromARGB(255, 112, 107, 107),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyContainer2(widthApp),
                    MyContainer2(widthApp),
                    MyContainer2(widthApp),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: widthApp,
                height: heightBody * 0.3,
                color: Color.fromARGB(255, 112, 107, 107),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyContainer3(widthApp),
                    MyContainer3(widthApp),
                    MyContainer3(widthApp),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: widthApp,
                height: heightBody * 0.3,
                color: Color.fromARGB(255, 112, 107, 107),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyContainer4(widthApp),
                    MyContainer4(widthApp),
                    MyContainer4(widthApp),
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}

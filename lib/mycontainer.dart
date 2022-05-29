import 'package:flutter/material.dart';
import 'package:layoubuilder/main.dart';

class MyContainer extends StatelessWidget {
  final double widthApp;
  MyContainer(this.widthApp);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: widthApp * 0.2,
            height: constraints.maxHeight * 9,
            color: Colors.blue,
          ),
        );
      },
    );
  }
}

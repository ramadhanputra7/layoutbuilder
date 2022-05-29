import 'package:flutter/material.dart';

class MyContainer3 extends StatelessWidget {
  final double widthApp;
  MyContainer3(this.widthApp);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: widthApp * 0.2,
            height: constraints.maxHeight * 1,
            color: Color.fromARGB(255, 213, 236, 9),
          ),
        );
      },
    );
  }
}

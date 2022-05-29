import 'package:flutter/material.dart';

class MyContainer2 extends StatelessWidget {
  final double widthApp;

  MyContainer2(this.widthApp);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: widthApp * 0.2,
            height: constraints.maxHeight * 1,
            color: Color.fromARGB(255, 207, 81, 31),
          ),
        );
      },
    );
  }
}

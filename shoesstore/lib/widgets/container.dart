import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget text;
  final Color color;

  const MyContainer({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 200,
          height: 200,
          child: Center(
            child: text,
          ),
          decoration: BoxDecoration(
            color: color,
          )),
    );
  }
}

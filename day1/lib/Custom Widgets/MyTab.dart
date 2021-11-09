import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final Widget child;

  const MyTab({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        child: Center(child: child),
        decoration: BoxDecoration(
          color: Colors.blue,
          // gradient: GradientTransform(),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

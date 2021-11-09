import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Day 4"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Home Page",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

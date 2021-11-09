import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello My Day2"),
      ),
      drawer: Drawer(),
      body: Material(
        child: Center(
            child: Text(
          "Hello World This is Day 2",
          style: TextStyle(
              color: Colors.blue, fontSize: 27, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

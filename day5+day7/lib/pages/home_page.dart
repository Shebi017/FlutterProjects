import 'package:day5/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Day 5"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("Wellcome to My Day 5"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoesstore/widgets/container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
      ),
      body: MyContainer(
        color: Colors.red,
        text: Text("LOGIN PAGE"),
      ),
    );
  }
}

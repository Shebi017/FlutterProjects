import 'package:flutter/material.dart';
import 'package:shoesstore/widgets/container.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyContainer(
        color: Colors.black,
        text: Text(
          "Register Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

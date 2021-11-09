import 'package:day4/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool buttonClick = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (!(_formkey.currentState!.validate())) {
      setState(() {
        buttonClick = true;
      });

      await Future.delayed(Duration(seconds: 2));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() {
        buttonClick = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("assets/images/login2.png"),
              Text(
                "Wellcome $username",
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == "") {
                          return "Username cannot be null";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        username = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == "") {
                          return "Password cannot be null";
                        }
                        // else if (value.length < 6) {
                        // return "Password can contain atleast six charecter";
                        // }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      color: Colors.blue,
                      borderRadius: buttonClick
                          ? BorderRadius.circular(60)
                          : BorderRadius.circular(10),
                      child: InkWell(
                        // splashColor: Colors.red,
                        onTap: () {
                          moveToHome(context);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          alignment: Alignment.center,
                          width: buttonClick ? 60 : 150,
                          height: 50,
                          // color: Colors.blue,
                          child: buttonClick
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

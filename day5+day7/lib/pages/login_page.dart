import 'package:day5/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            // Login Image

            Image.asset("assets/images/login2.png"),

            // Wellcome Text
            Text(
              "Wellcome $name",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 28,
              ),
            ),

            //  Form Feilds and Login button

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  // First Text Feild for Username

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Username can't be empty!";
                      }
                      return null;
                    },
                  ),

                  // Second Text Form Field for Password

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter password";
                      } else if (value.length < 6) {
                        return "Password contain atmost 6 charecter";
                      }
                    },
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //  Login Button Design

                  InkWell(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isClick = true;
                        });
                        await Future.delayed(Duration(seconds: 2));
                        await Navigator.pushNamed(context, MyRoutes.homeRoutes);
                        setState(() {
                          isClick = false;
                        });
                      }
                    },
                    child: AnimatedContainer(
                      width: isClick ? 67 : 150,
                      duration: Duration(seconds: 2),
                      height: 50,
                      // color: Colors.blue,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: isClick
                              ? BorderRadius.circular(67)
                              : BorderRadius.circular(10),
                          color: Colors.blue),
                      child: isClick
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

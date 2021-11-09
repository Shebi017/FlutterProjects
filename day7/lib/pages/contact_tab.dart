import 'package:flutter/material.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.brown,
        child: Center(
          child: Text(
            "Contact Us Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

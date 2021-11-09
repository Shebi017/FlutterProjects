import 'package:flutter/material.dart';
import 'package:houseapp/custom/borderbox.dart';
import 'package:houseapp/utils/constants.dart';
// import 'package:houseapp/utils/constants.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double padding = 25;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          // color: COLOR_WHITE,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: padding, vertical: padding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderBox(
                        padding: EdgeInsets.all(8),
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.menu,
                          color: COLOR_GREY,
                        )),
                    BorderBox(
                        padding: EdgeInsets.all(8),
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.settings,
                          color: COLOR_GREY,
                        ))
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

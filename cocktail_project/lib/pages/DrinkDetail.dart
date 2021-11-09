import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({Key? key, @required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("${drink["strDrink"]}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: drink["idDrink"],
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage("${drink["strDrinkThumb"]}"),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // ////////
            Text("ID: ${drink["idDrink"]}",
                style: TextStyle(color: Colors.white, fontSize: 21)),

            // Title
            SizedBox(
              height: 30,
            ),

            Text(
              "${drink['strDrink']}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
              ),
            ),

            // Description
            SizedBox(
              height: 30,
            ),
            Text(
              "${drink['strInstructions']}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

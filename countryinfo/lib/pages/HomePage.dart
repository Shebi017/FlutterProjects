import 'package:countryinfo/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgURL =
        "https://media.istockphoto.com/photos/pakistan-monument-islamabad-picture-id535695503?k=20&m=535695503&s=612x612&w=0&h=S16wHXc-b3AkL7YMrcFkR2pDGFJA1bRsPmAfQlfrwkc=";
    return Scaffold(
        appBar: AppBar(
          title: Text("CountryInfo"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: 10,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GridTile(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.detailRoute);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      // height: 170,
                      // width: 170,
                      color: Colors.yellow,
                      child: Image.network(
                        imgURL,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  header: Center(
                      child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Pakistan",
                      style: TextStyle(fontSize: 23),
                    ),
                  )),
                  footer: Text("Footer"),
                );
              }),
        ));
  }
}

import 'package:cocktail_project/pages/DrinkDetail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var api;
  var res;
  var drinks;
  bool isSearching = false;
  var searchText = "B";

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    api =
        "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=$searchText";
    res = await http.get(Uri.parse(api));
    var body = json.decode(res.body);
    drinks = body['drinks'];
    setState(() {});
    print(drinks.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      // appBar
      appBar: AppBar(
        title: !isSearching
            ? Text("Cocktail App")
            : TextField(
                onChanged: (value) {
                  searchText = value;

                  setState(() {});
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search Cocktalil Here",
                  hintStyle: TextStyle(color: Colors.white),
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
        // centerTitle: true,
        actions: [
          isSearching
              ? IconButton(
                  onPressed: () {
                    isSearching = false;
                    setState(() {});
                  },
                  icon: Icon(Icons.cancel))
              : IconButton(
                  onPressed: () {
                    isSearching = true;
                    setState(() {});
                  },
                  icon: Icon(Icons.search),
                ),
        ],
        elevation: 0.0,
      ),
      // body
      body: res != null
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: drinks.length,
                  itemBuilder: (context, index) {
                    var drink = drinks[index];
                    return ListTile(
                      title: Text(
                        "${drink['strDrink']}",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text("${drink["idDrink"]}",
                          style: TextStyle(color: Colors.white)),
                      leading: Hero(
                        tag: drink["idDrink"],
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(drink["strDrinkThumb"]),
                        ),
                      ),
                      // OnTap Functionality
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DrinkDetail(drink: drink)));
                      },
                    );
                  }),
            )
          : Center(
              child: CircularProgressIndicator(backgroundColor: Colors.white)),
    );
  }
}

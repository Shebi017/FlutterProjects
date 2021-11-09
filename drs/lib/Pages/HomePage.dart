import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var body;
  getData() async {
    var url = "http://127.0.0.1:8000/api";
    var res = await http.get(Uri.parse(url), headers: {"id": "2"});
    body = json.decode(res.body);

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    const String URL =
        "https://1.bp.blogspot.com/-2rmt55p4Jgc/XmSUgHGmaaI/AAAAAAAAPRw/rF-e1cRuLEI7AnWw-gMsMsEc1irlJuhWwCLcBGAsYHQ/s1600/Lovely%2BDP%2BFor%2BWhatsapp%2BProfile%2B%2B%252823%2529.jpg";
    return Scaffold(
      appBar: AppBar(
        title: Text("MyShop"),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        // leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
        child: UserAccountsDrawerHeader(
          margin: EdgeInsets.all(0),
          accountEmail: Text("qurshishebi@gmail.com"),
          accountName: Text("Shebi"),
          currentAccountPicture: Image.network(URL),
        ),
      ),
      body: GridView.builder(
          itemCount: body.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridTile(
                child: Container(
                  height: 40,
                  width: 25,
                  color: Colors.red,
                  // decoration: BoxDecoration(),
                ),
                header: Container(
                  child: Image.network(
                    URL,
                    fit: BoxFit.fill,
                  ),
                  height: 220,
                  // width: 50,
                ),
                footer: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "My Now Footer",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

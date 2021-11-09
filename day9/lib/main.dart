import 'package:day9/models/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final DummyList = List.generate(20, (index) => CatelogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: ListView.builder(
          itemCount: CatelogModel.items.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(13.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    print("${CatelogModel.items[index].name} is pressed");
                  },
                  leading: Image.network(
                    CatelogModel.items[index].image,
                  ),
                  trailing: Text(CatelogModel.items[index].price.toString()),
                  // title: Text(CatelogModel.items[index].name),
                  title: Text("Index : ${index}"),
                  subtitle: Text(CatelogModel.items[index].desc),
                ),
              ),
            );
          }),
    );
  }
}

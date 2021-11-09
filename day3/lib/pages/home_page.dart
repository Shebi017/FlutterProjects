import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool clickContainer1 = false;
  bool clickContainer2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Day 3"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () async {
                    setState(() {
                      clickContainer1 = true;
                    });
                    await Future.delayed(Duration(seconds: 5));
                    setState(() {
                      clickContainer1 = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    child: Center(
                      child: clickContainer1
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 55,
                            )
                          : Text(
                              "Container 1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                    ),
                    color: clickContainer1 ? Colors.amber : Colors.green,
                    height: 200,
                    width: 350,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      clickContainer2 = true;
                    });
                    await Future.delayed(Duration(seconds: 5));
                    setState(() {
                      clickContainer2 = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 5),
                    child: Center(
                      child: Text(
                        "Container 2",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    // color: Colors.pink,
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: clickContainer2
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "Container 3",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  color: Colors.grey,
                  height: 200,
                  width: 350,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

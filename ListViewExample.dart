import 'package:flutter/material.dart';
class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  List color = [Colors.purple,Colors.cyan,Colors.brown,Colors.pinkAccent,Colors.amber,Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(  //ListView is the most commonly used scrolling widget in Flutter
      body: ListView.builder( //Large or infinite dynamic lists.
        // itemCount: 10,
        itemCount: color.length,  //the itemCount property tells Flutter exactly how many items are in your list
        itemBuilder: (context,index){ // itemBuilder is a callback function used by ListView.builder
          //BuildContext which tells Flutter where this item sits in the widget tree
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                // color: index==1 ?Colors.pink :Colors.lightGreenAccent,
                color: color[index],
                child: Text("$index"),
              ),
            ),
          );
        },
      ),
    );
  }
}

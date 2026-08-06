import 'package:flutter/material.dart';
import 'package:vedaxi/GridViewExample.dart';
import 'package:vedaxi/ListViewExample.dart';
import 'package:vedaxi/StackExample.dart';
class BottomNavigationExample extends StatefulWidget {
  BottomNavigationExample({super.key});

  @override
  State<BottomNavigationExample> createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  List screens = [StackExample(),GridViewExample(),ListViewExample()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
          currentIndex: currentIndex,
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),
          items: [
            BottomNavigationBarItem(
              label: "Home",
                backgroundColor: Colors.grey,
                icon: Icon(Icons.account_balance,color: Colors.black,)
            ),
            BottomNavigationBarItem(
                label: "Task",
                icon: Icon(Icons.task,color: Colors.black,)
            ),
            BottomNavigationBarItem(
                label: "Account",
                icon: Icon(Icons.person,color: Colors.black,)
            ),
          ]
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vedaxi/GridViewExample.dart';
import 'package:vedaxi/ListViewExample.dart';
import 'package:vedaxi/RegisterForm.dart';
import 'package:vedaxi/TextFieldExample.dart';

class Practice extends StatefulWidget {
   Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}


class _PracticeState extends State<Practice> {

  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
    List screens=[GridViewExample(),RegisterForm(),TextFieldExample(),ListViewExample()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                label: "Home",
                backgroundColor: Colors.grey,
                icon: Icon(Icons.home_outlined,color: Colors.black,)
            ),
            BottomNavigationBarItem(
                label: "Booking",
                backgroundColor: Colors.red,
                icon: Icon(Icons.add_call,color: Colors.black,)
            ),
            BottomNavigationBarItem(
                label: "Account",
                backgroundColor: Colors.blue,
                icon: Icon(Icons.account_circle_outlined,color: Colors.black,)
            ),
            BottomNavigationBarItem(
                label: "Setting",
                backgroundColor: Colors.orange,
                icon: Icon(Icons.adb_outlined,color: Colors.black,)
            ),
          ]
      ),
    );
  }
}
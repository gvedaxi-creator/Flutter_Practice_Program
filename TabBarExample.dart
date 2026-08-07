import 'package:flutter/material.dart';
import 'package:vedaxi/AdminDashboardDesign.dart';
import 'package:vedaxi/RegisterForm.dart';
import 'package:vedaxi/StackExample.dart';
import 'package:vedaxi/StackImageLogin.dart';
import 'package:vedaxi/WhatsappDesign.dart';
class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // no of tabs u want
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Example"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          bottom: TabBar(
              tabs: [
                Text("Home"),
                Text("Task"),
                Text("Profile"),
                Text("About Us")
              ]
          ),
        ),
        body: TabBarView(
            children: [
              StackImageLogin(),
              RegisterForm(),
              WhatsappDesign(),
              AdminDashboardDesign()
            ]
        ),
      ),
    );
  }
}

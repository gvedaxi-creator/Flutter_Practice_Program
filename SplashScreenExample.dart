import 'package:flutter/material.dart';
import 'package:vedaxi/GridViewExample.dart';

class SplashScreenExample extends StatefulWidget {
  const SplashScreenExample({super.key});

  @override
  State<SplashScreenExample> createState() => _SplashScreenExampleState();
}

class _SplashScreenExampleState extends State<SplashScreenExample> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context)=> GridViewExample()
          )
      );
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("../assets/images/doreamon.png")

          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ElevatedButton(
          //       onPressed: (){
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context)=> GridViewExample()));
          //       },
          //       child: Text("Next Page")),
          // )
        ],
      ),
    );
  }
}

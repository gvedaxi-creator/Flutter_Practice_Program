import 'package:flutter/material.dart';
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_ja8CnL8Y_dkoral07I6lBbQxGmEPrZp2n6rT28miFQ&s=10",
              height: 300,
              fit: BoxFit.fill,),
              Positioned(
                bottom: -20,
                right: 120,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.teal,
                  child: Icon(Icons.arrow_forward_rounded),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Loantopupscreen extends StatelessWidget {
  const Loantopupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E3152),
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.orange,size: 20,)),
                  ),
                  Text("Loan TopUp",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  Card(
                    color: Color(0xFF1B4E75),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Available for Top-Up",style: TextStyle(color: Colors.white70,fontSize: 13),),
                            

                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

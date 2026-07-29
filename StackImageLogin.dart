import 'package:flutter/material.dart';
class StackImageLogin extends StatelessWidget {
  const StackImageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr0syRc_DSth65uWKxMInAlx2yXNeIao3twTuHgkAIBUH_qYX1BDJFuio&s=10",),
                            fit: BoxFit.fill,
                        )
                    ),
                  ),
                  Positioned(
                    bottom: -90,
                    right: 60,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Username" ,
                                border: OutlineInputBorder()
                    
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Password" ,
                                  border: OutlineInputBorder()
                    
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -120,
                    right: 170,
                    child: CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 15,),
                      backgroundColor: Colors.cyan,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

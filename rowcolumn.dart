import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(height: 50,width: 25,decoration: BoxDecoration(color: Colors.red),),
              ),
              Column(
                children: [
                  Container(height: 20,width: 50,decoration: BoxDecoration(color: Colors.blue),),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(height: 20,width: 50,decoration: BoxDecoration(color: Colors.blue),),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(height: 25,width: 25,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(50))),
                  ),
                  Container(height: 25,width: 25,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(50)))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(height: 50,width: 25,decoration: BoxDecoration(color: Colors.green)),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(height: 25,width: 150,decoration: BoxDecoration(color: Colors.deepPurple),),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(height: 25,width: 150,decoration: BoxDecoration(color: Colors.deepPurple),),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(height: 20,width: 30,decoration: BoxDecoration(color: Colors.grey),),
                  ),
                  Container(height: 20,width: 30,decoration: BoxDecoration(color: Colors.grey),),

                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(height: 30,width: 15,decoration: BoxDecoration(color: Colors.red),),
                  ),
                  Container(height: 30,width: 15,decoration: BoxDecoration(color: Colors.red),)
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(height: 20,width: 35,decoration: BoxDecoration(color: Colors.blue)),
                  ),
                  Container(height: 20,width: 35,decoration: BoxDecoration(color: Colors.blue))
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(height: 30,width: 25,decoration: BoxDecoration(color: Colors.black),),
                  ),
                  Container(height: 30,width: 25,decoration: BoxDecoration(color: Colors.black),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Snack Bar ........"),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 2), // timer to show snackbar for particular time
                      // action: SnackBarAction(
                      //     label: label,                                                                                                                                                                                                                                                                                
                      //     onPressed: onPressed),
                    )
                );
              }, 
              child: Text("Snack Bar Button"))
        ],
      ),
    );
  }
}

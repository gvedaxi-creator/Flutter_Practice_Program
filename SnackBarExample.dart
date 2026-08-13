import 'package:flutter/material.dart';
class SnackBarExample extends StatelessWidget {
   SnackBarExample({super.key});

   TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){
            
                  if(name.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Incorrect Username"),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 2), // timer to show snackbar for particular time
                          // action: SnackBarAction(
                          //     label: label,
                          //     onPressed: onPressed),
                        )
                    );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Username : ${name.text}"),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 2), // timer to show snackbar for particular time
                          // action: SnackBarAction(
                          //     label: label,
                          //     onPressed: onPressed),
                        )
                    );
                  }
            
                }, 
                child: Text("Snack Bar Button")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Delete !!"),
                          content: Text("Do you really want to delete this Account??"),
                          actions: [
                            TextButton(onPressed: (){

                            }, child: Text("Yes")),
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("No"))
                          ],
                        );
                      }
                  );
                },
                child: Text("Alert Dialog")),
          ),
          DropdownButton(
              items: [
                DropdownMenuItem(child: Text("Apple")),
                DropdownMenuItem(child: Text("Banana"))
              ],
              onChanged: (context){}
          )
        ],
      ),
    );
  }
}

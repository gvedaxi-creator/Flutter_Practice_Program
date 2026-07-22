import 'package:flutter/material.dart';
class TextFieldExample extends StatelessWidget {
   TextFieldExample({super.key});
   //remove const from above line during variable usage

   TextEditingController name = TextEditingController();//variable declaration
   TextEditingController password = TextEditingController();//variable declaration
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  //label: Text("Enter name"),
                  prefixIcon: Icon(Icons.person),
                  hintText: "Name",
                  // border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.redAccent
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                      )
                  )
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: password,
                // obscureText: true,//hide the password
                // maxLength: 10,
                // maxLines: 3,//don't use obscureText with this
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.deepPurpleAccent
                ),
                decoration: InputDecoration(
                  //label: Text("Enter name"),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: "Password",
                    // border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.redAccent
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                        )
                    )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

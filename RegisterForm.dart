import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController num = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController desc = TextEditingController();
  TextEditingController password = TextEditingController();

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
                  hintText: "Name",
                  prefixIcon: Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.teal
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.blue
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
                controller: num,
                maxLength: 10,
                decoration: InputDecoration(
                    hintText: "Mobile No",
                    prefixIcon: Icon(Icons.call),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            color: Colors.teal
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.blue
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
                controller: email,
                decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            color: Colors.teal
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.blue
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
                controller: desc,
                maxLines: 2,
                // textAlign: TextAlign.center,

                decoration: InputDecoration(
                    hintText: "Description",
                    prefixIcon: Icon(Icons.description),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            color: Colors.teal
                        )
                    ),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15),
                         borderSide: BorderSide(
                             color: Colors.blue
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
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            color: Colors.teal
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text("Submit"))
        ],
      ),
    );
  }
}

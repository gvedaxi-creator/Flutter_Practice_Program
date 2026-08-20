import 'package:flutter/material.dart';

class login_screen extends StatelessWidget {
  login_screen({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Text("Login to your account",
                    style: TextStyle(
                      fontSize: 26,
                      color:Colors.black87,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text("Provide your username and password \n to access your account",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.4
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.2
                )
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Username",
                      style: TextStyle(color: Colors.black87, fontSize: 15,fontWeight: FontWeight.w100),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0,bottom: 24.0),
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFE6ECF1),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade50),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade50),
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                    Text("Password",style: TextStyle(color: Colors.black87, fontSize: 15,fontWeight: FontWeight.w100),),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0,bottom: 24.0),
                      child: TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFE6ECF1),
                          isDense: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade50),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade50),
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff16375A),
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)
                                )
                            ),
                            child: Text("LOGIN",
                              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
                            )
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 32,),
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Colors.black, fontSize: 15)),
                    Text("Register", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15))
                  ],
                ),
                SizedBox(height: 16,),
                Text("Forgot Password?", style: TextStyle(color: Colors.black, fontSize: 15))
              ],
            ),
          )
        ],
      ),
    );
  }
}

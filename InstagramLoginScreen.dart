import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class InstagramLoginScreen extends StatelessWidget {
   InstagramLoginScreen({super.key});

   TextEditingController username = TextEditingController();
   TextEditingController password = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // DropdownButton(
          //     items: [
          //       DropdownMenuItem(child: Text("English")),
          //       DropdownMenuItem(child: Text("French")),
          //       DropdownMenuItem(child: Text("Spanish"))
          //
          //     ],
          //     icon: Icon(Icons.arrow_drop_down),
          //     onChanged: (_){}
          // ),
          Text("Instagram",style: GoogleFonts.openSans(
            fontSize: 50
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: username,
              decoration: InputDecoration(
                hintText: "Phone number , email or username"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                hintText: "Password"
              ),
            ),
          ),
          SizedBox(
            child: FilledButton(
                onPressed: (){

                },
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFF1895C9)
                ),
                child: Text("Log in",style: TextStyle(color: Colors.white),),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot your login details?"),
                Text("Get help",style: TextStyle(color: CupertinoColors.systemBlue,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Text("OR",style: TextStyle(fontSize: 15),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook,color: CupertinoColors.link,)
            ],
          )

        ],
      ),
    );
  }
}

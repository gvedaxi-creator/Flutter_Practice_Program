import 'package:flutter/material.dart';
class Settingsui extends StatelessWidget {
  Settingsui({super.key});

    List icontext = [
    {"icon":Icons.translate_outlined,"text":"Application Language"},
    {"icon":Icons.password_sharp,"text":"Change Password"},
    {"icon":Icons.verified_user_outlined,"text":"Privacy Policy"},
    {"icon":Icons.assignment_outlined,"text":"Terms & Conditions"},
    {"icon":Icons.info_outline,"text":"About Us"},
    {"icon":Icons.headset_mic_outlined,"text":"Contact Us"},
    {"icon":Icons.star_rate_outlined,"text":"Rate Us"},
    {"icon":Icons.logout_outlined,"text":"Logout"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xFF0F8397),
        leading: Icon(Icons.arrow_back,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: icontext.length,
            itemBuilder: (context,index){
              return Column(
                children: [
                  ListTile(
                    leading: Card(
                     color: Color(0xFF0F8397),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(icontext[index]["icon"],color: Colors.white,size: 20,),
                      ),
                    ),
                    title: Text(icontext[index]["text"]),
                    trailing: Icon(Icons.chevron_right_outlined),
                  ),
                  index == icontext.length-1 ? SizedBox()
                  :Divider(color: Colors.white,),
                ],
              );
            }
        ),
      ),
    );
  }
}

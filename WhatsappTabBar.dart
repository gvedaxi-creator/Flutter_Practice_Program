import 'package:flutter/material.dart';
import 'package:vedaxi/StackImageLogin.dart';
class WhatsappTabBar extends StatelessWidget {
  WhatsappTabBar({super.key});
  List name = ["Shreya","Anjali","Dhruvi","Neksha","Axita","Vishva","Priyanshi"];
  List message = ["Aur batao, kya chal raha hai aaj kal?","Long time no see! Kahan gayab ho aaj kal?","Free ho toh call karun?","Thodu kaam chhe, thodi vaar pachi reply karu.","Aa traffic ae dimage kharab kari nakhiyu aaj.","Aaj no su plan chhe taro?","Taru kaam patyu ke haji baki j chhe?"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
          ],
          bottom: TabBar(
              tabs: [
                Icon(Icons.people_alt,color: Colors.white,),
                Text("Chats",style: TextStyle(color: Colors.white),),
                Text("Updates",style: TextStyle(color: Colors.white),),
                Text("Calls",style: TextStyle(color: Colors.white),),
              ]
          ),

        ),
        body: TabBarView(
            children: [
              StackImageLogin(),
              ListView.builder(
                itemCount: name.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                    ) ,
                    title: Text(name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    subtitle: Text(message[index],style: TextStyle(color: Colors.grey),),
                    trailing: Text("12:15"),
                  );
                },
              ),
            ]
        )

      ),
    );
  }
}

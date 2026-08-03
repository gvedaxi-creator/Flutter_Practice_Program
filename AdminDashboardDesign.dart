import 'package:flutter/material.dart';
class AdminDashboardDesign extends StatelessWidget {
  AdminDashboardDesign({super.key});

  List name = ["Employee Management","Task Management","Attendance Management","Expense Tracking","Travel Management","Celebration"];
  List icon = [Icons.people,Icons.task,Icons.calendar_month,Icons.bar_chart,Icons.flight,Icons.celebration];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app,color: Colors.white,))
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            // mainAxisSpacing: 10,
            // crossAxisSpacing: 10,
          ),
          itemCount: 6,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon[index],color: Colors.blue,),
                      Text(name[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ) ,
              ),
            );
          }
      ),
    );
  }
}

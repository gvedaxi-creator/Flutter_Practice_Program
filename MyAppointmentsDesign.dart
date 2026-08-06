import 'package:flutter/material.dart';
class MyAppointmentsDesign extends StatefulWidget {
  MyAppointmentsDesign({super.key});

  @override
  State<MyAppointmentsDesign> createState() => _MyAppointmentsDesignState();
}

class _MyAppointmentsDesignState extends State<MyAppointmentsDesign> {
  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Appointments",style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.green.shade900,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,))
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: 2,
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(),
            );
          }
      ),
      // Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 100,
      //         width: 150,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.green.shade900,
      //         ),
      //         child: Column(
      //           children: [
      //             Text("Order ID",style: TextStyle(color: Colors.yellowAccent),)
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          items:[
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_outlined)
            ),
            BottomNavigationBarItem(
                label: "Booking",
                icon: Icon(Icons.airplane_ticket_outlined)
            ),
            BottomNavigationBarItem(
                label: "Offer",
                icon: Icon(Icons.local_offer_outlined)
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_outline)
            )
          ],
      ),
    );
  }
}

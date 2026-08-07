import 'package:flutter/material.dart';
class MyAppointmentsDesign extends StatelessWidget {
  const MyAppointmentsDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Appoinments",style: TextStyle(color:Colors.white ),),
        backgroundColor: Color(0xFF0F5A37),
        centerTitle: true,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                color: Color(0xFF0F5A37),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order ID",style: TextStyle(color: Color(0xFFE9B958)),),
                            Text("1234567",style: TextStyle(color: Colors.white,)),
                          ],
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Appointment Date",style: TextStyle(color: Color(0xFFE9B958)),),
                                Text("Sunday, March 7, 2023 ",style: TextStyle(color: Colors.white,)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Appointment Time",style: TextStyle(color: Color(0xFFE9B958)),),
                                Text("11:00 AM",style: TextStyle(color: Colors.white,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Type of Service",style: TextStyle(color: Color(0xFFE9B958)),),
                                Text("Full Body Massage",style: TextStyle(color: Colors.white,)),
                                Text("Back Massage",style: TextStyle(color: Colors.white,)),
                                Text("Head Massage",style: TextStyle(color: Colors.white,)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Amount",style: TextStyle(color: Color(0xFFE9B958)),),
                                Text("100.00",style: TextStyle(color: Colors.white,)),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),


              ),
              Card(
                color: Color(0xFF0F5A37),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order ID",style: TextStyle(color: Color(0xFFE9B958)),),
                            Text("1234567",style: TextStyle(color: Colors.white,)),
                          ],
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Appointment Date",style: TextStyle(color: Color(0xFFE9B958)),),
                                Text("Sunday, March 7, 2023 ",style: TextStyle(color: Colors.white,)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Appointment Time",style: TextStyle(color: Color(0xFFE9B958)),),
                                Text("11:00 AM",style: TextStyle(color: Colors.white,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Type of Service",style: TextStyle(color: Color(0xFFE9B958)),),
                                Text("Full Body Massage",style: TextStyle(color: Colors.white,)),
                                Text("Back Massage",style: TextStyle(color: Colors.white,)),
                                Text("Head Massage",style: TextStyle(color: Colors.white,)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Amount",style: TextStyle(color: Color(0xFFE9B958)),),
                                Text("100.00",style: TextStyle(color: Colors.white,)),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),


              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.confirmation_num_outlined),label: "Booking"),
            BottomNavigationBarItem(icon: Icon(Icons.percent_rounded),label: "Offer"),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          ]
      ),
    );
  }
}

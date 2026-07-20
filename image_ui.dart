import 'package:flutter/material.dart';
class ImageUi extends StatelessWidget {
  const ImageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image UI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Align(alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIv2xqWJM2X8hbEsXUsxsjzzS-i3PWQC2sI24_mSYGazbRdJpIM5F70QaT&s=10",)
                  )
                ),
                child: Center(child: Text("Image")),
              ),
              CircleAvatar(
                radius: 50,
                child: Text("Image"),
                backgroundImage: AssetImage("assets/images/doreamon.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset("assets/images/doreamon.png",fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIv2xqWJM2X8hbEsXUsxsjzzS-i3PWQC2sI24_mSYGazbRdJpIM5F70QaT&s=10",
                    fit: BoxFit.fill,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

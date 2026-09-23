import 'package:flutter/material.dart';

class checkBox extends StatefulWidget {
  checkBox({super.key});

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {

  String selectedValueDropDown = "English";
  String selectedValueRadio = "Male";
  bool check_Box = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          //DROPDOWN
          
          DropdownButton(items: [
            DropdownMenuItem(
                child: Text("English"),
              value: "English",
            ),
            DropdownMenuItem(
              child: Text("Hindi"),
              value: "Hindi",
            ),
            DropdownMenuItem(
              child: Text("Gujarati"),
              value: "Gujarati",
            ),

          ],
              value: selectedValueDropDown,

              onChanged: (newValue){
            setState(() {
              selectedValueDropDown =  newValue!;
            });
              }
          ),
          
          //CHECKBOX
          Checkbox(value: check_Box,
              onChanged: (value)
              {
                setState(() {
                  check_Box = value!;
                });
              }
          ),
          Text("Terms & Condition"),


          // RADIO BUTTON
        RadioListTile(
            title: Text("Male"),
            value: "Male",
            groupValue: selectedValueRadio,
            onChanged: (value){
              setState(() {
                selectedValueRadio = value!;
              });
            }
        ),
          RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: selectedValueRadio,
              onChanged: (value){
                setState(() {
                  selectedValueRadio = value!;
                });
              }
          ),

        ],


        
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'widgets/TextArea.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

void main(List<String> args) {
  runApp(InputScreen());
}

class InputScreen extends StatelessWidget {
  TextArea name = TextArea(label: "Teacher's Name", id: "name");
  TextArea designation = TextArea(label: "Designation", id: "des");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 208, 188, 255),
          title: Text("Teacher Input Module"),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Column(children: [name, designation]),
              ),
              Row(
                SearchableDropdown.multiple(
                    items: ["A", "B"], onChanged: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:core';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'widgets/TextArea.dart';

void main(List<String> args) {
  runApp(InputScreen());
}




class InputScreen extends StatelessWidget {
  TextArea name = TextArea(label: "Teacher's Name", id: "name");
  TextArea workhr = TextArea(label: "Working Hours", id: "whr");
  String? selectedValue;
  static const List<String> clasec = <String>['SE-IT-A', 'SE-IT-B', 'TE-IT', 'BE-IT'];
  static const List<String> sem = <String>['1', '2'];
  static const List<String> subjects = <String>['OOP', 'CG','DSA','LDCO','DM','BCN','DBMS','PA','M3','SE'];


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
                      Container(child: name, padding: EdgeInsets.symmetric(horizontal: 100),height: 100),
                  LayoutBuilder(
                      builder: (context, constraints) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize:MainAxisSize.max,
                          children: [
                            Container(
                              height: 100,
                              width: constraints.maxWidth * 0.3,
                              child: Container(child: workhr,alignment: Alignment.center,),
                            ),
                            Container(
                              height: 100,
                              alignment: Alignment.center,
                              width: constraints.maxWidth * 0.3,
                              child: DropdownButtonFormField(
                                onChanged: (value) {},
                                items:clasec.map((value) => DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                ))
                                    .toList(),
                                elevation: 4,
                                decoration: InputDecoration(
//Add isDense true and zero Padding.
//Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
//Add more decoration as you want here
//Add label If you want but add hint outside the decoration to be aligned in the button perfectly
                                    prefixIcon: const Icon(Icons.view_timeline_outlined, size: 16),
                                    fillColor: Colors.white),
                                isExpanded: true,
                                hint:Text(
                                  'Class',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              alignment: Alignment.center,
                              width: constraints.maxWidth * 0.3,
                              child: DropdownButtonFormField(
                                onChanged: (value) {},
                                items:sem.map((value) => DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                ))
                                    .toList(),
                                elevation: 4,
                                decoration: InputDecoration(
//Add isDense true and zero Padding.
//Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(16),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
//Add more decoration as you want here
//Add label If you want but add hint outside the decoration to be aligned in the button perfectly
                                    prefixIcon: const Icon(Icons.view_timeline_outlined, size: 16),
                                    fillColor: Colors.white),
                                isExpanded: true,
                                hint:Text(
                                  'Semester',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 100),
                    child: DropdownButtonFormField(
                      onChanged: (value) {},
                      items:subjects.map((value) => DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      ))
                          .toList(),
                      elevation: 4,
                      decoration: InputDecoration(
//Add isDense true and zero Padding.
//Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                          isDense: true,
                          contentPadding: EdgeInsets.all(16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
//Add more decoration as you want here
//Add label If you want but add hint outside the decoration to be aligned in the button perfectly
                          prefixIcon: const Icon(Icons.book, size: 16),
                          fillColor: Colors.white),
                      isExpanded: true,
                      hint:Text(
                        'Subject',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ),
    );
  }
}








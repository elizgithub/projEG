import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_container.dart';
import 'dart:async';

class Addgrade extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddGradeState();
  }
}

class AddGradeState extends State<Addgrade> {
  var gradeItemSelected = "A+";
  var yearItemSelected = 2015;
  var gradeList = [
    "A+",
    "A",
    "A-",
    "B+",
    "B",
    "B-",
    "C+",
    "C",
    "C-",
    "D+",
    "D",
    "D-",
    "F"
  ];
  void gradeAddDialog(){ 
    showDialog(
      context: context,
      builder: (BuilderContext){
          return  AlertDialog(
          title: new Text ("Add Grade"),    
          content:  
           new Container(
           child: Column(
            children: <Widget>[
              //  Padding(
              //   padding: EdgeInsets.only(top: 25, left: 25, right: 25),
               TextField(
                
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                  hintText: 'type course name',
                  border: OutlineInputBorder(),
                  labelText: 'Course',
                  labelStyle: TextStyle(fontSize: 10)),
            ),
          // ),
            ])                  
      ));
      }
    
    );
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Container(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: TextField(
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                  hintText: 'type course name',
                  border: OutlineInputBorder(),
                  labelText: 'Course',
                  labelStyle: TextStyle(fontSize: 20)),
            ),
          ),

//DROP DOWN LIST FOR YEAR, GRADES, SEMESTER AND CREDITHR
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Row(
              children: <Widget>[
            

              ],
            ),
          ),
          
          Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: ButtonTheme(
                  height: 50,
                  minWidth: 350,
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Select Year and Semester",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.lightBlue.shade400,
                    // splashColor: Colors.amber,
                    // elevation: 4,
                    // highlightElevation: 8,
                    onPressed: () {
                          gradeAddDialog();
                    },
                  )))
        ],
      )),
     
    );

  }
}

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import  'dart:async';
class AddGrade extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddGradeState();
  }


  }

class AddGradeState extends State<AddGrade>{
  var gradeItemSelected = "A+";

    Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Container(
        
        child: Column(children: <Widget>[

         Padding(
            padding: EdgeInsets.only(top: 25,left: 25,right: 25),
              child: TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                  hintText: 'type course name',
                  border: OutlineInputBorder(),
                  labelText: 'Course',
                  labelStyle: TextStyle(fontSize: 20)
                  ),
                ),
              ),
       
          Padding(
            padding: EdgeInsets.only(top: 25,left: 25,right: 25),
             
             child: Row(children: <Widget>[
               DropdownButton<String>(
                items: [
                DropdownMenuItem(
                  value: "1",
                  child: Text("A+"),
                 ),
                DropdownMenuItem(
                value: "2",
                child: Text("A"),
                ),
                DropdownMenuItem(
                value: "3",
                child: Text("A-"),
                ),
                DropdownMenuItem(
                value: "4",
                child: Text("B+"),
                ),
                DropdownMenuItem(
                value: "5",
                child: Text("B"),
                
                )                 
               ], onChanged: (String value) {
                 setState((){
                    this.gradeItemSelected = value;
                 });
               },
                value: gradeItemSelected,
                isExpanded: true,
               )


             ],
             ),
              
          ),

          Padding(
            padding: EdgeInsets.only(top: 25,left: 25,right: 25),
                child: ButtonTheme(
                height: 50,
                minWidth: 350,          
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Select Year and Semester",
                  style: TextStyle(color: Colors.white,),
                  textAlign: TextAlign.center,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  color: Colors.lightBlue.shade400,
                  // splashColor: Colors.amber,
                  // elevation: 4,
                  // highlightElevation: 8, 
                  onPressed: () {},
              )
            )
          )
        ],)
        

      

      ),
      



      
    );
  }
  
}
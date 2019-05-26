import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import  'dart:async';
class AddGrade extends StatelessWidget{
  @override
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
          // Padding(
          //   padding: EdgeInsets.only(top: 25,left: 25,right: 25),
          //     child: SizedBox(
          //       width: 200,
          //       height: 200,
          //       child: Container(
          //         decoration: new BoxDecoration(
          //           shape: BoxShape.rectangle,
          //           border: new Border.all(
          //             color: Colors.blue
          //           )                    
          //         ),
          //       ),
          //     ),
          // ),

          Padding(
            padding: EdgeInsets.only(top: 25,left: 25,right: 25),
             
              child: NumberPicker.integer(
                  initialValue: 2010,
                  minValue: 2010,
                  maxValue: 2030, 
                  onChanged: (num value) {},
            )
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
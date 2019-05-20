import 'package:flutter/material.dart';

class Gpashow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      final gpacard = Card(
            //the list of card with year gpa
            child: Column(
            children: <Widget>[
            ListTile(
              title: Text(
                "GPA",
                textAlign: TextAlign.right,
              ),
              leading: Text(
                "2017",
                textAlign: TextAlign.right,
                style: new TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "3.5",
                textAlign: TextAlign.right,
                style: new TextStyle(fontSize: 20),
              ),
            )
          ],
        )
        );
  
return new Scaffold(
  body: Container(
    child: new SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter, //ALIGNMENT FOR THE CIRCLE CONTAINER
            child: Container(
              //the circle container
              margin: EdgeInsets.only(top: 20,bottom: 15) ,//margin from top for the circle
              child: Align(
                  //ALIGNMENT FOR THE TEXT
                  alignment: Alignment.center,
                  child: (new Text(
                    "4.0",
                    textAlign: //the GPA
                    TextAlign.center,
                    style: new TextStyle(
                    fontSize: 60, fontWeight: FontWeight.w600),
                  ))),
              width: 250,
              height: 250,
              decoration: new BoxDecoration(
                  color: Colors.white10,
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.lightBlue.shade400, width: 3.0)
                      )
                      ),
        ),
          gpacard //the card for gpa
      ],
    ))));
  
}
}
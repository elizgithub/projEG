import 'package:flutter/material.dart';
import 'package:projectgpaflutter/UI/addgrade.dart';
import './gpashow.dart';
class Mygpa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Mygpastate();
  }
}

class Mygpastate extends State<Mygpa> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: AppBar(
          title: new Text("GPA"),
          centerTitle: true, //centers the titile of the appbar
          backgroundColor: Colors.lightBlue.shade400,
          leading: //puts it on first  likely on the left beginning
              new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(
                context), // this will get back to the main page or just back to were it came from
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.view_list),
                text: 'Overall',
              ),
              Tab(
                icon: Icon(Icons.add),
                text: 'Add Grade',
              )

            ],
          ),
        ),
        body: TabBarView(//THE BODY ON THE TAB childrens
          children: <Widget>[
         
            new Gpashow(),
            new Addgrade(),
          ],
        ),
      ),
    ));
  }
}

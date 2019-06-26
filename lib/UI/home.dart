import 'package:flutter/material.dart';
import './mygpa.dart';
import './gpashow.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Yene GPA"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade400,
        
      ),
      body: Center(
        child: new SingleChildScrollView(
          child: new Container(
            alignment: Alignment.center,
            child: new Column(
              children: <Widget>[

            //CARD1---------------------------------------------
               new GestureDetector (
                onTap:(){//ontab or on clicked code
                    print("Card Clicked");
                    Navigator.push(context, MaterialPageRoute(//routing to antother page on clicked
                      builder: (context)=> Mygpa()
                    ));
                },
             
              child: Container(
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  // color: new Color(0xFF333366),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                          new BoxShadow(  
                            color: Colors.black12,
                            blurRadius: 10.0,
                            offset: new Offset(0.0, 10.0),
                          ),
                        ],
                  image: DecorationImage(
                    image: AssetImage('images/mygpa.jpg'),
                    fit: BoxFit.fill
                  )
                ),

              ),


                ),
                
                new Text(
                  "GPA",
                  style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlue.shade400),
                  ),
                  new Divider(color: Colors.lightBlue,indent: 16.0,),
                
                //CARD2-------------------------
                new GestureDetector(
                  onTap: (){
                    print("card2 clicked");
                  },
                child: Container(
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: new Color(0xFF333366),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                          new BoxShadow(  
                            color: Colors.black12,
                            blurRadius: 10.0,
                            offset: new Offset(0.0, 10.0),
                          ),
                        ],
                      image: DecorationImage(
                        image: AssetImage('images/scale.jpg'),
                        fit: BoxFit.fill
                      )
                ),
              
                
              ),

                ),

                new Text(
                  "Scale",
                  style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlue.shade400),
                  ),
                  new Divider(color: Colors.lightBlue,indent: 16.0,),
        
        //CARD3-----------------------------------------------
              new GestureDetector(
                onTap: (){
                  print("Card3 clicked");
                },
                child: Container(
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: new Color(0xFF333366),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                          new BoxShadow(  
                            color: Colors.black12,
                            blurRadius: 10.0,
                            offset: new Offset(0.0, 10.0),
                          ),
                        ],

                    image: DecorationImage(
                      image: AssetImage('images/statistics.png'),
                      fit: BoxFit.fill)
                ),
              ),

                ),

                new Text(
                  "Statistic",
                  style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlue.shade400),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

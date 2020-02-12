import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BG Color Changer",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Background Color Changer"),
        ),
        body: HomePage(),
        )
      );
  }
}

class HomePage extends StatefulWidget {
  @override
   _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  
  var currentColor = Colors.white;
  var rndR,rndB,rndG;
  setRandomColor(){
      rndR = Random().nextInt(255);
      rndG = Random().nextInt(255);
      rndB = Random().nextInt(255);
    setState(() {
      currentColor = Color.fromRGBO(rndR, rndG, rndB, 0.7);
    });      
    }
  
  
   @override
   Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Color = ($rndR,$rndG,$rndB)",style: TextStyle(fontSize: 20.0),),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0)),
            
            RaisedButton(
              
              color: Colors.yellowAccent,
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Text("Change it!",
                style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,),),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: setRandomColor,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0)),
            Text("Red    = $rndR \nGreen = $rndG \nBlue    = $rndB",style: TextStyle(fontSize: 20.0),),
          ],
        ),
      )
    );
  }
} 
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inscription extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'inscrivier vous',
      home: Inscri()
    );
    
    
  }

}
class Inscri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body :Center(
      child :Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
     Padding(
    padding: EdgeInsets.all(16.0),
    child: TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your username'
  ),
    ),
  ),
   
   Padding(
    padding: EdgeInsets.all(16.0),
    child: TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your password',
  ),
  obscureText: true,
    ),
  ),
  
  
  Center(
  child: FlatButton(
  color: Colors.deepPurple,
  padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
  textColor: Colors.white,
  disabledColor: Colors.grey,
  disabledTextColor: Colors.black,
      onPressed: (){
      
    }, 
    child: Text("SIGN IN")
    ),
  ),
  Center(
    child: FlatButton(
      onPressed: (){},
      child: new Text('SIGN UP',
      style:new TextStyle(
         color: Colors.amber,
       )
      )
      ),
  ),




  ],
)
    )
    );
  }

}
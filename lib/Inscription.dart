

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
  FlatButton(
  color: Colors.deepPurple,
  textColor: Colors.white,
  disabledColor: Colors.grey,
  disabledTextColor: Colors.black,
  padding: EdgeInsets.all(8.0),
  splashColor: Colors.deepOrange,
  
  onPressed: () {
    /*...*/
  },
  child: Text(
    "LOGIN",
    style: TextStyle(fontSize: 20.0),
  ),
)
  ],
)
    )
    );
  }

}
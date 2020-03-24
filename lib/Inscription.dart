

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
    labelText: 'Enter your username'
  ),
    ),
  ),
  ],
)
    )
    );
  }

}
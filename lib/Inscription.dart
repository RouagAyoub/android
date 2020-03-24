

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inscription extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child :Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
   TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your username'
  ),
),
  ],
)
    );
  }

}
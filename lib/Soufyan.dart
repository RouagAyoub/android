

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/Inscription.dart';

class  Soufyan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'ahkem blsatek',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('hafef'),),
      body: Inscription(),
      drawer: Drawer(
        child: ListView(
          // Important:-Remove any padding from the ListView
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

}
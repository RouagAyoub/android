import 'package:flutter/material.dart';
import 'package:task1/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}




class _SignInState extends State<SignIn> {

  void initState(){
    super.initState();
  }
  final AuthService _auth = AuthService();

  final _formkey = GlobalKey<FormState>();
TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passcontroller = TextEditingController();

  @override
  void dispose(){
    _emailcontroller.dispose();
    _passcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body :Column(
        children: <Widget>[
          Container(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 10),
          child: Form(
            key: _formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                 controller: _emailcontroller,
                 decoration: InputDecoration(
                   hintText: 'Email',
                   
                 ),
                 
                 validator: (value) {
                   if(value.isEmpty){
                     return 'Email or number recuired';
                   }
                 }, 
              ),
              TextFormField(
                 controller: _passcontroller,
                 decoration: InputDecoration(
                   hintText: 'Password',
                 ),
                 obscureText: true,
                 validator: (value){
                   if(value.isEmpty){
                     return 'Password recuired';
                   }
                 },
              ),
              RaisedButton(
                color: Colors.red,
                child: Text('Login'),
                onPressed: () {
                if(_formkey.currentState.validate()){
                  var result =  Firebase
                }
              },)
            ],

          )
          ),
      )

        ],
      )
    );
  }
}

/*
Form(
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
      onPressed: () async{
      dynamic result = await _auth.signinanonym();
      if(result == null)
      {
        print('prbm sign in');
      }else{
        print(result.uid);
      }
    }, 
    child: Text("SIGN IN")
    ),
  ),

  ],
)
    )

    */
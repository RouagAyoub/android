import 'package:firebase_auth/firebase_auth.dart';
import 'package:task1/model/user.dart';


class AuthService{
  
  final FirebaseAuth _auth = FirebaseAuth.instance;


  //getting the user uid from firebase user

  User _useruidfromfirebase(FirebaseUser user){
    return user != null ? User(uid : user.uid): null; 

  }

  //auth stream user 

  Stream<User> get user{
    return _auth.onAuthStateChanged
    //.map((FirebaseUser user) => _useruidfromfirebase(user));
    .map(_useruidfromfirebase);
  }

  //sign in anon

    Future signinanonym() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user =result.user;
      return _useruidfromfirebase(user);
    }catch(e){
      print(e.toString());
      return null;
    }
    
  }
  //sign in with email and password

  //register with email

  //sign out


}
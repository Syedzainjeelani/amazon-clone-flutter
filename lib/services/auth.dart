import 'package:amazone_clone_flutter/constants.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  //Register with email, pass
  Future registerUser(
      {String email, String password, Function addError}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        addError(error: kWeekPasswordError);
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        addError(error: kAccountAlreadyExistsError);
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Sign in with email, pass
  Future singInUser({String email, String password, Function addError}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        addError(error: kUserNotFoundError);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        addError(error: kWrongPassError);
      }
      return null;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../util/showSnackbar.dart';

class FirebaseAuthMethods {
//create a firebase authintication instance, and pass it as a constructor so we can use it later when we call this class
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

//Email sign up function:
  Future<void> signUpwithEmail({
    required String email,
    required String password,
    required BuildContext context,
  })

  //make the function asyncrouhnous so it can connect to the firebase database in real time
  async {
    //make exceptions in case
    try {
      await _auth.createUserWithEmailAndPassword(
          //// the main method for creating user with email and password using the firebase_auth  package
          //pass it the parameters we created above
          email: email,
          password: password);
    } on FirebaseAuthException catch (e) {
      //another function from the firebase_auth package that let's us throw exepctions
      showSnackBar(context, e.message!);
    }
  }

  //Email sign in function:
  Future<void> logInWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  //forgot password function:
  Future<void> forgotPassword({
    required String email,
    required BuildContext context,
  }) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  //Sign in with gmail function:

  Future<void> signInWithGmail(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      if (googleAuth?.accessToken != null) {
        //create a new credentional
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        UserCredential userCredential =
            await _auth.signInWithCredential(credential);
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }
}

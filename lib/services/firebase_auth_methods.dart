// import 'package:chatapp/pages/home_page.dart';
// import 'package:chatapp/pages/login_page.dart';
// import 'package:chatapp/services/constants.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class FirebaseAuthMethods {
//   final FirebaseAuth auth;

//   FirebaseAuthMethods(this.auth);

//   User get user => auth.currentUser!;

//   Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();

//   Future<void>signUpMethod({
//     required String email, 
//     required String password,
//     required BuildContext context,  //to show the snackbars and stuff
//   }) async {
//     try{
//       await auth.createUserWithEmailAndPassword(email: email, password: password);
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const HomePage(),
//         ),
//       );
//     } on FirebaseAuthException catch(e) {
//       if(e.code == "weak-password") {
//         print("The password is too weak");
//       } else if(e.code == "email-already-in-use") {
//         print("The account already exists");
//       }
//       showSnackBar(context, e.message!);
//     }
//   }

//   Future<void> loginWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       await auth.signInWithEmailAndPassword(email: email, password: password);
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const HomePage(),
//         ),
//       );
//     } on FirebaseAuthException catch(e) {
//       showSnackBar(context, e.message!);
//     }
//   }

//   Future<void> logoutUser(BuildContext context) async {
//     try {
//       await auth.signOut();
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const LoginPage(),
//         ),
//       );
//     } on FirebaseAuthException catch(e) {
//       showSnackBar(context, e.message!);
//     }
//   }
// }

import 'package:chatapp/pages/home_page.dart';
import 'package:chatapp/pages/login_page.dart';
import 'package:chatapp/services/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_firebase_methods/constants.dart';
// import 'package:flutter_firebase_methods/screens/login_screen.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  User get user => _auth.currentUser!;

  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();

  Future<void> signUpMethod({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        print("the password is too weak.");
      } else if (e.code == "email-already-in-use") {
        print("The account already exists");
      }
      showSnackBar(context, e.message!);
    }
  }

  Future<void> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  Future<void> logoutUser(BuildContext context) async {
    try {
      await _auth.signOut();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }
}
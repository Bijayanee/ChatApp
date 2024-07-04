import 'package:chatapp/pages/home_page.dart';
import 'package:chatapp/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot) {
          //user is logged in
          if(snapshot.hasData) {
            return const HomePage();
          }
          //user not logged in
          else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
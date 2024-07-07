// 

import 'package:chatapp/services/firebase_auth_methods.dart';
import 'package:chatapp/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<FirebaseAuthMethods>().user;
    return Scaffold(
    );
  }
}
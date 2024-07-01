import 'package:chatapp/widget/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFieldWidget(
              textEditingController: emailController, 
              labelText: 'Enter Email', 
              textInputType: TextInputType.emailAddress,
            ),
            
            TextFieldWidget(
              textEditingController: passwordController, 
              labelText: 'Enter Password', 
              textInputType: TextInputType.visiblePassword
            ),
            ElevatedButton(
              onPressed: () {}, 
              child: Text('Login'),
            ),
          ],
        ), 
      ),
    );
  }
}
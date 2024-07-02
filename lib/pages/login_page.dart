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

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFieldWidget(
              textEditingController: emailController, 
              labelText: 'Enter Email', 
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: screenHeight*0.02,),
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
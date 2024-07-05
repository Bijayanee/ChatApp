import 'package:chatapp/pages/signup_page.dart';
import 'package:chatapp/services/auth_service.dart';
import 'package:chatapp/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signin() async{
    // get the auth service
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signInWithEmailandPassword(
        emailController.text, 
        passwordController.text,
      );
    } catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

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
            Text('Sign-In', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: screenHeight*0.05,),
            TextFieldWidget(
              textEditingController: emailController, 
              labelText: 'Enter Email', 
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: screenHeight*0.02,),
            TextFieldWidget(
              textEditingController: passwordController, 
              labelText: 'Enter Password', 
              textInputType: TextInputType.visiblePassword,
              isPass: true,
            ),
            SizedBox(height: screenHeight*0.02,),
            SizedBox(
              width: screenWidth/1.5,
              child: ElevatedButton(
                onPressed: () => signin, 
                child: Text('Login'),
              ),
            ),
            SizedBox(height: screenHeight*0.02,),
            TextButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
            }, child: Text('sign up here')),
          ],
        ),
      ),
    );
  }
}
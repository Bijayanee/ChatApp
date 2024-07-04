import 'package:chatapp/pages/login_page.dart';
import 'package:chatapp/widget/textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  signup(){

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
            TextFieldWidget(
              textEditingController: confirmPasswordController, 
              labelText: 'Enter Confirm Password', 
              textInputType: TextInputType.visiblePassword,
              isPass: true,
            ),
            SizedBox(height: screenHeight*0.02,),
            SizedBox(
              width: screenWidth/1.5,
              child: ElevatedButton(
                onPressed: () => signup, 
                child: Text('Login'),
              ),
            ),
            SizedBox(height: screenHeight*0.02,),
            TextButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }, child: Text('sign up here')),
          ],
        ),
      ),
    );
  }
}
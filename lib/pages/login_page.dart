// import 'package:chatapp/pages/signup_page.dart';
// import 'package:chatapp/services/auth_service.dart';
// import 'package:chatapp/services/firebase_auth_methods.dart';
// import 'package:chatapp/widget/textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {

//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   void loginWithEmail() {
//     context.read<FirebaseAuthMethods>().loginWithEmail(
//       email: emailController.text,
//       password: passwordController.text,
//       context: context,
//     );
//   }

//   // void signin() async{
//   //   // get the auth service
//   //   final authService = Provider.of<AuthService>(context, listen: false);

//   //   try {
//   //     await authService.signInWithEmailandPassword(
//   //       emailController.text, 
//   //       passwordController.text,
//   //     );
//   //   } catch(e) {
//   //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {

//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text('Sign-In', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
//             SizedBox(height: screenHeight*0.05,),
//             TextFieldWidget(
//               textEditingController: emailController, 
//               labelText: 'Enter Email', 
//               textInputType: TextInputType.emailAddress,
//             ),
//             SizedBox(height: screenHeight*0.02,),
//             TextFieldWidget(
//               textEditingController: passwordController, 
//               labelText: 'Enter Password', 
//               textInputType: TextInputType.visiblePassword,
//               isPass: true,
//             ),
//             SizedBox(height: screenHeight*0.02,),
//             SizedBox(
//               width: screenWidth/1.5,
//               child: ElevatedButton(
//                 onPressed: () => loginWithEmail, 
//                 child: Text('Login'),
//               ),
//             ),
//             SizedBox(height: screenHeight*0.02,),
//             TextButton(onPressed: () {
//               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
//             }, child: Text('sign up here')),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:chatapp/pages/signup_page.dart';
import 'package:chatapp/services/firebase_auth_methods.dart';
import 'package:chatapp/widget/button.dart';
import 'package:chatapp/widget/textfield.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_firebase_methods/screens/signup_screen.dart';
// import 'package:flutter_firebase_methods/services/firebase_auth_methods.dart';
// import 'package:flutter_firebase_methods/widget/custom_button.dart';
// import 'package:flutter_firebase_methods/widget/custom_text_field.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginWithEmail() {
    context.read<FirebaseAuthMethods>().loginWithEmail(
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
              controller: emailController,
              hintText: 'Enter your email',
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password',
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            onPressed: loginWithEmail,
            text: "Login",
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
            child: const Text(
              "Don't have an account? Sign up",
            ),
          ),
        ],
      ),
    );
  }
}
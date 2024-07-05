// import 'package:flutter/material.dart';

// class TextFieldWidget extends StatelessWidget {
//   final TextEditingController textEditingController;
//   final bool isPass;
//   final String labelText;
//   final TextInputType textInputType;

//   const TextFieldWidget({
//     super.key,
//     required this.textEditingController,
//     this.isPass = false,
//     required this.labelText,
//     required this.textInputType,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
      
//       obscureText: isPass,
//       keyboardType: textInputType,
//       decoration: InputDecoration(
//         labelText: labelText,
//         labelStyle: TextStyle(
//           //fontWeight: FontWeight.bold,
//           color: Colors.grey.shade600,
//         ),
//         floatingLabelStyle: TextStyle(
//           fontWeight: FontWeight.bold,
//         ),
//         fillColor: Color.fromARGB(255, 86, 77, 77),
//         filled: true,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide.none,
//         ),
//       ),
//       onChanged: (value) {},
//       // validator: (value) {
//       //   return value!.length<6 ? 'Password should have at least 6 characters' : null;
//       // },
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
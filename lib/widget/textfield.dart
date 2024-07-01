import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String labelText;
  final TextInputType textInputType;

  const TextFieldWidget({
    super.key,
    required this.textEditingController,
    this.isPass = false,
    required this.labelText,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      obscureText: isPass,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          //fontWeight: FontWeight.bold,
          color: Colors.grey.shade600,
        ),
        floatingLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (value) {},
      // validator: (value) {
      //   return value!.length<6 ? 'Password should have at least 6 characters' : null;
      // },
    );
  }
}
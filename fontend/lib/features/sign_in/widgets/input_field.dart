import 'package:flutter/material.dart';

class UserInputField extends StatelessWidget {
  const UserInputField({
    super.key,
    required this.subInputTitle,
    required this.height,
    required this.width,
    required this.controller,
  });

  final String subInputTitle;
  final double height;
  final double width;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          labelStyle: TextStyle(
            color: Color.fromRGBO(47, 47, 47, 1.0),
            fontSize: 16,
          ),
          fillColor: Colors.white,
          filled: true,
          helper: null,
          labelText: subInputTitle,
        ),
      ),
    );
  }
}

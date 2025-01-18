import 'package:flutter/material.dart';

class UserInputField extends StatelessWidget {
  const UserInputField({
    super.key,
    required this.subInputTitle,
  });

  final String subInputTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 90,
      child: TextField(
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
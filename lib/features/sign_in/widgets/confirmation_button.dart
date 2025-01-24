import 'package:flutter/material.dart';

class ConfirmationButton extends StatelessWidget{
  const ConfirmationButton({
    super.key,
    required this.width,
    required this.height,
    required this.buttonText,
  });

  final double width;
  final double height;
  final String buttonText;

  @override
  Widget build(BuildContext context){
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color.fromRGBO(77, 101, 141, 1),
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: null,
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
        ),
      ),
    );
  }
}
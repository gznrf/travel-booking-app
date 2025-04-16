import 'package:flutter/material.dart';
import 'package:hostel_booking/theme/colors.dart';

class ConfirmationButton extends StatelessWidget{
  const ConfirmationButton({
    super.key,
    required this.width,
    required this.height,
    required this.buttonText,
    required this.buttonFunction,
  });

  final double width;
  final double height;
  final String buttonText;
  final Function buttonFunction;

  @override
  Widget build(BuildContext context){
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: DefaultColors.mainBlue,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        buttonFunction();
      },
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
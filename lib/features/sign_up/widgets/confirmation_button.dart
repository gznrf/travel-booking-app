import 'package:flutter/material.dart';
import 'package:hostel_booking/theme/colors.dart';

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
        backgroundColor: DefaultColors.mainBlue,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () => Navigator.pushNamed(context, '/home'),
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
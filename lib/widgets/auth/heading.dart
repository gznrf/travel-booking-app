import 'package:flutter/material.dart';

class AuthHeading extends StatelessWidget{
  const AuthHeading({
    super.key,
    required this.headingText,
    required this.height,
    required this.width,
  });

  final String headingText;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context){
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      alignment: Alignment.center,
      child: Text(
        headingText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 44,
        ),
      ),
    );
  }
}


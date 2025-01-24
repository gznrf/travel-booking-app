import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    super.key,
    required this.headingText,
  });

  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 792,
            height: 100,
            alignment: Alignment.centerLeft,
            child: Text(
              headingText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

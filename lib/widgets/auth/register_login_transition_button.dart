import 'package:flutter/material.dart';

class RegisterLoginTransitionButton extends StatelessWidget{
  const RegisterLoginTransitionButton({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
    required this.buttonText,
    required this.page,
  });

  final double containerHeight;
  final double containerWidth;
  final String buttonText;
  final StatefulWidget page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      child: Align(
        alignment: Alignment.topRight,
        child: TextButton(
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => page),
            );
          },
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';

class RegistrationHeading extends StatelessWidget{
  const RegistrationHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      width: 340,
      height: 100,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      alignment: Alignment.center,
      child: Text(
        'Регистрация',
        style: TextStyle(
          color: Colors.white,
          fontSize: 44,
        ),
      ),
    );
  }
}


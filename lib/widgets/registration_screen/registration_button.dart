import 'package:flutter/material.dart';

class RegistrationButton extends StatelessWidget{
  const RegistrationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color.fromRGBO(77, 101, 141, 1),
        minimumSize: Size(376, 63),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: null,
      child: Text(
        'Зарегистрироваться',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
        ),
      ),
    );
  }
}
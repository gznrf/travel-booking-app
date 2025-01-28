import 'package:flutter/material.dart';

class BackArray extends StatelessWidget {
  const BackArray({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20, top: 15),
          width: 500,
          height: 94,
          child: InkWell(
            child: Image.asset('../assets/icons/arrow_back.png'),
            onTap: () => Navigator.pushNamed(context, '/home'),
          ),
        ),
      ],
    );
  }
}

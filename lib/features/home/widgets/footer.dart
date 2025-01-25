import 'package:flutter/material.dart';
import 'package:hostel_booking/theme/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 1189,
          height: 186,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(23), topLeft: Radius.circular(23)),
            color: DefaultColors.mainBlue,
          ),
        ),
      ],
    );
  }
}

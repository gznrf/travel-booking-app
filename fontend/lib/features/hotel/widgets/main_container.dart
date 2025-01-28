import 'package:flutter/material.dart';
import 'package:hostel_booking/theme/colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
    required this.children,
  });

  final Column children;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 1189,
        height: 850,
        decoration: BoxDecoration(
          color: DefaultColors.mainBlue,
          borderRadius: BorderRadius.circular(23),
        ),
        margin: EdgeInsets.only(bottom: 10, top: 10),
        child: children,
      ),
    );
  }
}
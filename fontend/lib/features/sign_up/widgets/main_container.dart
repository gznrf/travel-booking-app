import 'package:flutter/material.dart';
import 'package:hostel_booking/theme/colors.dart';


class MainContainer extends StatelessWidget{
  const MainContainer({
    super.key,
    required this.children,
    required this.height,
    required this.width,
  });

  final Column children;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context){
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: width,
        height: height,
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
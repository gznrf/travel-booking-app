import 'package:flutter/material.dart';

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
        height: 1368,
        decoration: BoxDecoration(
          color: Color.fromRGBO(77, 101, 141, 1),
          borderRadius: BorderRadius.circular(23),
        ),
        margin: EdgeInsets.only(bottom: 10, top: 10),
        child: children,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CategorySubtitle extends StatelessWidget {
  const CategorySubtitle({
    super.key,
    required this.categoryText,
  });

  final String categoryText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            width: 382,
            height: 53,
            margin: EdgeInsets.only(left: 90, bottom: 40),
            child: Text(
              categoryText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

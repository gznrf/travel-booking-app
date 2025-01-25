import 'package:flutter/material.dart';

class CategorySubtitle extends StatelessWidget {
  const CategorySubtitle({
    super.key,
    required this.categoryText,
    required this.textContainerHeight,
  });

  final String categoryText;
  final double textContainerHeight;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            width: 382,
            height: textContainerHeight,
            margin: EdgeInsets.only(left: 90, bottom: 0),
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

import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
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
            width: 792,
            height: 50,
            margin: EdgeInsets.only(left: 90, top: 50, bottom: 0),
            child: Text(
              categoryText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

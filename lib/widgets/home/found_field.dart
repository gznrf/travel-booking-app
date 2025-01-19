import 'package:flutter/material.dart';

class FoundField extends StatelessWidget {
  const FoundField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: 792,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 69,
              width: 607,
              child: Text(
                  'Выберите страну и вам покажутся самые лучшие варианты',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
              ),
            ),
            Container(
              height: 61,
              width: 792,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(23),
              ),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 12),
                  Image.asset('../lib/app/assets/images/search_country_icon.png'),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
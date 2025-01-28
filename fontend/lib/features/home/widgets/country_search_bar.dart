import 'package:flutter/material.dart';


class CountrySearchBar extends StatelessWidget {
  const CountrySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 792,
            height: 61,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.white,
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 34,
              ),
              decoration: InputDecoration(
                fillColor: Colors.black,
                icon: Image.asset('../assets/icons/search_icon.png'),
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.only(topRight: Radius.circular(23), bottomRight: Radius.circular(23)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

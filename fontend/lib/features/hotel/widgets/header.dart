import 'package:flutter/material.dart';
import 'package:hostel_booking/theme/colors.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 1189,
            height: 56,
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 1121,
                  height: 56,
                  decoration: BoxDecoration(
                    color: DefaultColors.mainBlue,
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'лучшие отели',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'категории',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'страны',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: DefaultColors.mainBlue,
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Image.asset('../assets/icons/header/account_icon.png'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
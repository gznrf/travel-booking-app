import 'package:flutter/material.dart';
import 'package:hostel_booking/theme/colors.dart';

class HotelDescription extends StatelessWidget {
  const HotelDescription({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 99),
          width: 500,
          height: 177,
          child: Column(
            children: [
              //Hotel stars
              Row(
                children: [
                  Image.asset('../assets/icons/hotel_description/star.png', ),
                  SizedBox(width: 5,),
                  Image.asset('../assets/icons/hotel_description/star.png', ),
                  SizedBox(width: 5,),
                  Image.asset('../assets/icons/hotel_description/star.png', ),
                  SizedBox(width: 5,),
                  Image.asset('../assets/icons/hotel_description/star.png', ),
                  SizedBox(width: 5,),
                  Image.asset('../assets/icons/hotel_description/star.png', ),
                ],
              ),
              SizedBox(height: 10,),
              //Hotel title
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 269,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Название отеля',
                      style: TextStyle(
                        color: DefaultColors.mainBlue,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7,),
              //Hotel address
              Row(
                children: [
                  Image.asset('../assets/icons/location.png'),
                  SizedBox(width: 5,),
                  Text(
                    'Адрес отеля',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7,),
              //Rating
              Row(
                children: [
                  Text(
                    'Рейтинг ?/10',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

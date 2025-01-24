import 'package:flutter/material.dart';

import 'widgets.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
    required this.categoryText,
  });

  final String categoryText;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategorySubtitle(
          categoryText: categoryText,
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HotelPassport(
                hotelName: 'Карамба отель',
                imagePath: '../assets/images/hotel_images/1.png',
                price: '*20 000 в сутки',
              ),
              SizedBox(width: 40,),
              HotelPassport(
                hotelName: 'Карамба отель',
                imagePath: '../assets/images/hotel_images/1.png',
                price: '*20 000 в сутки',
              ),
              SizedBox(width: 40,),

              HotelPassport(
                hotelName: 'Карамба отель',
                imagePath: '../assets/images/hotel_images/1.png',
                price: '*20 000 в сутки',
              ),
              SizedBox(width: 40,),
              HotelPassport(
                hotelName: 'Карамба отель',
                imagePath: '../assets/images/hotel_images/1.png',
                price: '*20 000 в сутки',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

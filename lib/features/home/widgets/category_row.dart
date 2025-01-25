import 'package:flutter/material.dart';

import 'widgets.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
    required this.categoryText,
    required this.textContainerHeight,
  });

  final String categoryText;
  final double textContainerHeight;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategorySubtitle(
          categoryText: categoryText,
          textContainerHeight: textContainerHeight,
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
        SizedBox(
          height: 35,
        ),
      ],
    );
  }
}

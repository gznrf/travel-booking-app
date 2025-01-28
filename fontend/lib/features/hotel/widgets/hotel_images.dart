import 'package:flutter/material.dart';

class HotelImages extends StatelessWidget {
  const HotelImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 99),
      width: 1090,
      height: 500,
      child: Row(
        children: [
          Image.asset('../assets/images/hotel_page_images/yandex_map.png',),
          SizedBox(width: 25,),
          Container(
            alignment: Alignment.centerRight,
            width: 605,
            height: 500,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('../assets/images/hotel_page_images/image_1.png'),
                  SizedBox(width: 25,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('../assets/images/hotel_page_images/image_4.png'),
                      SizedBox(height: 25,),
                      Image.asset('../assets/images/hotel_page_images/image_5.png'),
                    ],
                  ),
                  SizedBox(width: 25,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('../assets/images/hotel_page_images/image_4.png'),
                      SizedBox(height: 25,),
                      Image.asset('../assets/images/hotel_page_images/image_5.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

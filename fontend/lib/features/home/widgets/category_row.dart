import 'package:flutter/material.dart';

import '../../../repositories/hotels/hotel_repo.dart';
import 'widgets.dart';

class CategoryRow extends StatefulWidget {
  const CategoryRow({super.key});

  @override
  State<CategoryRow> createState() => _CategoryRowState();
}

class _CategoryRowState extends State<CategoryRow> {

  //final String categoryTitle;

  //final Map<String, dynamic> response;

  @override
  void initState() {
    super.initState();
    _getHotels();
  }

  void _getHotels() async {
    var hotelsResponse = await HotelRepo.getHotelsByCategory('sunny days');
    var responseCode = hotelsResponse['status_code'];
    debugPrint(responseCode.toString());
    debugPrint(hotelsResponse['hotels_list'].toString());
  }

  void parseResponse(Map<String, dynamic> response){
    response.forEach((key, value){
      debugPrint(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategorySubtitle(
          categoryText: '',
          textContainerHeight: 60,
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

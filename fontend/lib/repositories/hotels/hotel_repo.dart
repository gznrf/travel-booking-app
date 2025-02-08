import 'dart:convert';

import 'package:hostel_booking/api/paths.dart';
import 'package:dio/dio.dart';

class GetAllHotelsByCategory{
  /*Future<int> getHotelsByCategory(String hotelsCategory) async{
    Dio dio = Dio();

    dio.options.headers['Authorization'] = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MzgzNjE1ODUsImlhdCI6MTczODMxODM4NSwidXNlcl9pZCI6MX0.1sXhTjOVPE_GcikdGYTBvlv4xdpVpU7v2LbhhEbdH1M';
    final response = await dio.get(
        URLPath + allHotelsPath,
        data: {
          "hotel_category": hotelsCategory,
        },

    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.data);
      List<dynamic> hotelsJson = data['hotels'];

      print(hotelsJson.map((json) => HotelModel.fromJson(json)).toList());
      return hotelsJson.map((json) => HotelModel.fromJson(json)).toList();
    } else {
      throw Exception('Не удалось загрузить отели');
    }
  }*/
}
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../routes/routes.dart';

class HotelRepo{
  static Future<Map<String, dynamic>> getHotelsByCategory(String hotelsCategory) async{

    Map<String, String> requestBody = {
      "hotel_category":hotelsCategory,
    };

    debugPrint(requestBody.toString());
    final response = await Dio().get(
        allHotelsRoute,
        queryParameters: requestBody,
    );

    Map<String, dynamic> responseData = {
      "status_code":response.statusCode,
      "hotels_list":jsonDecode(response.toString()),
    };

    return responseData;
  }
}
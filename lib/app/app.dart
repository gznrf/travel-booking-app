import 'package:flutter/material.dart';
import '../routes/routes.dart';
import '../theme/default.dart';

class HotelBookingApp extends StatelessWidget {
  const HotelBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Бронирование отелей',
      theme: theme,
      routes: routes,
      initialRoute: '/sign-up',
    );
  }
}
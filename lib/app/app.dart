import 'package:flutter/material.dart';
import 'package:hostel_booking/screens/home.dart';
import '../screens/registration.dart';

class HostelBookingApp extends StatelessWidget {
  const HostelBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Бронирование отелей',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(77, 101, 141, 1),
        ),
        useMaterial3: false,
      ),

      home: const HomePage(),
    );
  }
}
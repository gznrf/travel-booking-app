import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({super.key});

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            MainContainer(
              children: Column(
                  children: [
                    BackArray(),
                    HotelDescription(),
                    HotelImages(),
                  ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

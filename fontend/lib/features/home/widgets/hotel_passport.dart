import 'package:flutter/material.dart';

class HotelPassport extends StatelessWidget {
  const HotelPassport({
    super.key,
    required this.hotelName,
    required this.imagePath,
    required this.price,
  });

  final String hotelName;
  final String imagePath;
  final String price;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {

                 /*Navigator.pushNamed(context, '/hotel');*/
                },
                child: Container(
                  width: 229,
                  height: 285,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(23), topLeft:Radius.circular(23)),
                        ),
                        child: Image.asset(
                          imagePath,
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              hotelName,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    '../assets/icons/passport/yellow_star.png',
                                  ),
                                  Image.asset(
                                    '../assets/icons/passport/yellow_star.png',
                                  ),
                                  Image.asset(
                                    '../assets/icons/passport/yellow_star.png',
                                  ),
                                  Image.asset(
                                    '../assets/icons/passport/yellow_star.png',
                                  ),
                                  Image.asset(
                                    '../assets/icons/passport/yellow_star.png',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Text(
                                  price,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
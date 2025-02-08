import 'package:flutter/material.dart';
import 'package:hostel_booking/features/home/widgets/main_heading.dart';
import '../home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  void didChangeDependencies() {

    super.didChangeDependencies();
  }

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
                    MainHeading(
                      headingText: 'Выберите страну и вам покажутся самые лучшие варианты',
                    ),
                    CountrySearchBar(),
                    CategoryTitle(
                      categoryText: 'Разные отели по категориям',
                    ),
                    CategoryRow(categoryText: 'Для встреч по бизнесу и совещаний', textContainerHeight: 60,),
                    CategoryRow(categoryText: 'Для жаркого отдыха', textContainerHeight: 40,),

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
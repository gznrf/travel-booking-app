import 'package:flutter/material.dart';

import '../widgets/home/found_field.dart';
import '../widgets/home/main_container.dart';
import '../widgets/home/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
           child: Column(
              children: [
                Column(
                  children: [
                    Header(),
                    MainContainer(
                      children: Column(
                          children: [
                            FoundField(),
                          ],
                      ),
                    ),
                  ],
                )
              ],
            )
        ),
    );
  }
}
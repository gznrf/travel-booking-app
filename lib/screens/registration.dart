import 'package:flutter/material.dart';
import '../widgets/registration_screen/main_container.dart';
import 'package:hostel_booking/widgets/registration_screen/registration_heading.dart';
import '../widgets/registration_screen/input_field.dart';
import '../widgets/registration_screen/registration_button.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            MainContainer(
              children: Column(
                children: [
                  RegistrationHeading(),
                  Column(
                    children: [
                      UserInputField(subInputTitle: 'Ваше имя'),
                      UserInputField(subInputTitle: 'Ваша фамилия'),
                      UserInputField(subInputTitle: 'Ваша почта'),
                      UserInputField(subInputTitle: 'Ваш пароль'),
                    ],
                  ),
                ],
              ),
            ),
            RegistrationButton(),
          ],
        ),
      ),
    );
  }
}


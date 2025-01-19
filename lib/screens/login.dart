import 'package:flutter/material.dart';
import 'package:hostel_booking/screens/registration.dart';
import '../widgets/auth/main_container.dart';
import '../widgets/auth/heading.dart';
import '../widgets/auth/input_field.dart';
import '../widgets/auth/register_login_transition_button.dart';
import '../widgets/auth/confirmation_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainContainer(
            width: 344,
            height: 305,
            children: Column(
              children: [
                AuthHeading(
                  headingText: 'Авторизация',
                  width: 279,
                  height: 53,
                ),
                Column(
                  children: [
                    UserInputField(
                      subInputTitle: 'Ваша почта',
                      width: 279,
                      height: 90,
                    ),
                    UserInputField(
                      subInputTitle: 'Ваш пароль',
                      width: 279,
                      height: 90,
                    ),
                  ],
                ),
                RegisterLoginTransitionButton(
                  containerHeight: 40,
                  containerWidth: 300,
                  buttonText: 'Еще нет аккаунта? Зарегистрироваться',
                  page: RegistrationPage(),
                ),
              ],
            ),
          ),
          ConfirmationButton(
            width: 344,
            height: 58,
            buttonText: 'Войти',
          ),
        ],
      )
    );
  }
}
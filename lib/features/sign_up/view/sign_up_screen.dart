import 'package:flutter/material.dart';
import '../sign_up.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainContainer(
            width: 376,
            height: 513,
            children: Column(
              children: [
                AuthHeading(
                  headingText: 'Регистрация',
                  width: 340,
                  height: 100,
                ),
                Column(
                  children: [
                    UserInputField(
                      subInputTitle: 'Ваше имя',
                      width: 305,
                      height: 90,
                    ),
                    UserInputField(
                      subInputTitle: 'Ваша фамилия',
                      width: 305,
                      height: 90,
                    ),
                    UserInputField(
                      subInputTitle: 'Ваша почта',
                      width: 305,
                      height: 90,
                    ),
                    UserInputField(
                      subInputTitle: 'Ваш пароль',
                      width: 305,
                      height: 90,
                    ),
                  ],
                ),
                RegisterLoginTransitionButton(
                  containerHeight: 22,
                  containerWidth: 301,
                  buttonText: 'Уже зарегистрированы? Войти',
                  page: '/sign-in',
                ),
              ],
            ),
          ),
          ConfirmationButton(
            width: 376,
            height: 63,
            buttonText: 'Зарегистрироваться',
          ),
        ],
      ),
    );
  }
}


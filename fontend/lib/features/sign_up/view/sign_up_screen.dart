import 'package:flutter/material.dart';
import '../sign_up.dart';
import 'package:hostel_booking/repositories/auth/auth_repo.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


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
                      controller: nameController,
                    ),
                    UserInputField(
                      subInputTitle: 'Ваша фамилия',
                      width: 305,
                      height: 90,
                      controller: surnameController,
                    ),
                    UserInputField(
                      subInputTitle: 'Ваша почта',
                      width: 305,
                      height: 90,
                      controller: emailController,
                    ),
                    UserInputField(
                      subInputTitle: 'Ваш пароль',
                      width: 305,
                      height: 90,
                      controller: passwordController,
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
            buttonFunction: () async {
              var statusCode = await AuthRepo.registerUser(
                nameController.text,
                surnameController.text,
                emailController.text,
                passwordController.text,
              );
              if (statusCode == 200){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Message'),
                    content: Text(
                        'Вы зарегестрированы, перейдите на вход в аккаунт!'
                    ),
                  ),
                );
              } else if (statusCode == 400){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Message'),
                    content: Text(
                        'Ошибка регистрации',
                    ),
                  ),
                );
              }else{
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Message'),
                    content: Text(
                        'Ошибка повторите попытку!',
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}


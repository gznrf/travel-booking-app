import 'package:flutter/material.dart';
import 'package:hostel_booking/repositories/auth/auth_repo.dart';
import 'package:hostel_booking/repositories/routes/routes.dart';
import '../sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                        controller: emailController,
                      ),
                      UserInputField(
                        subInputTitle: 'Ваш пароль',
                        width: 279,
                        height: 90,
                        controller: passwordController,
                      ),
                    ],
                  ),
                  RegisterLoginTransitionButton(
                    containerHeight: 40,
                    containerWidth: 300,
                    buttonText: 'Еще нет аккаунта? Зарегистрироваться',
                    page: '/sign-up',
                  ),
                ],
              ),
            ),
            ConfirmationButton(
              width: 344,
              height: 58,
              buttonText: 'Войти',
              buttonFunction: () async {
                var response = await AuthRepo.loginUser(
                  emailController.text,
                  passwordController.text,
                );
                var statusCode = response['status_code'];

                if (statusCode == 200){
                  var responseData = response['response_data'];
                  final token = responseData['JWT'];
                  debugPrint(token);
                  AuthRepo.saveToken(token);
                  Navigator.pushNamed(context, '/home');
                  debugPrint(token);
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
        )
    );
  }
}
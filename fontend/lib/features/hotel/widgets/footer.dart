import 'package:flutter/material.dart';
import 'package:hostel_booking/theme/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 1189,
          height: 186,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(23), topLeft: Radius.circular(23)),
            color: DefaultColors.mainBlue,
          ),
          child: Row(
            children: [
              FooterColumn(
                title: 'Компания',
                firstLink: 'Вакансии',
                secondLink: 'Правовая информация',
                thirdLink: '',
                containerWidth: 140,
              ),
              SizedBox(
                width: 30,
              ),
              FooterColumn(
                title: 'Путешественникам',
                firstLink: 'Подарочные сертификаты',
                secondLink: 'Программа лояльности',
                thirdLink: 'Путеводитель по странам',
                containerWidth: 280,
              ),
              SizedBox(
                width: 30,
              ),
              FooterColumn(
                title: 'Помощь',
                firstLink: 'Справочная',
                secondLink: 'Обратная связь',
                thirdLink: '',
                containerWidth: 180,
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                margin: EdgeInsets.only(top: 30,),
                child: Column(
                  children: [
                    Text(
                      'Мы в соц сетях',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child:
                    Image.asset('../assets/images/footer_sn.png'),
                  ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FooterTitle extends StatelessWidget {
  const FooterTitle({
    super.key,
    required this.title,
  });
  
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  const FooterColumn({
    super.key,
    required this.title,
    required this.firstLink,
    required this.secondLink,
    required this.thirdLink,
    required this.containerWidth,
  });

  final String title;
  final String firstLink;
  final String secondLink;
  final String thirdLink;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 75),
      width: containerWidth,
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: containerWidth,
                child: FooterTitle(title: title)
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 5,),
            ],
          ),
          Row(
            children: [
              Container(
                width: containerWidth,
                child: FooterLink(subTitle: firstLink),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: containerWidth,
                child: FooterLink(subTitle: secondLink),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: containerWidth,
                child: FooterLink(subTitle: thirdLink),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class FooterLink extends StatelessWidget {
  const FooterLink({
    super.key,
    required this.subTitle,
  });

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Text(
          subTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
    );
  }
}



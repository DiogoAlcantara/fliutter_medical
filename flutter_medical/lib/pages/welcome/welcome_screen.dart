import 'package:flutter/material.dart';
import 'package:flutter_medical/pages/reserve/reserve_screen_especialist.dart';
import 'package:flutter_medical/pages/reserve/reserve_screen_sexual_health.dart';
import 'package:flutter_medical/utils/consts.dart';
import 'package:flutter_medical/pages/reserve/reserve_screen_pratice_general.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/menu_card.dart';
import 'package:flutter_medical/widget/my_header.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 333,
            imageUrl: 'assets/images/welcome.png',
            child: Column(
              children: <Widget>[
                HeaderLogo(),
                Text(
                  'Bem Vindo!',
                  style: TextStyle(
                    fontSize: 28,
                    color: AppConsts.mTitleTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Cuide da sua saúde hoje\n Agende uma consulta com nossos especialistas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppConsts.mTitleTextColor,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 36,
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppConsts.mBackgroundColor,
                    AppConsts.mSecondBackgroundColor
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Nossos serviços\nde saúde',
                          style: TextStyle(
                            color: AppConsts.mTitleTextColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          color: AppConsts.mSecondBackgroundColor,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MenuCard(
                        imageUrl: 'assets/images/general_practice.png',
                        title: 'Medicina Geral',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ReserveScreen();
                              },
                            ),
                          );
                        },
                      ),
                      MenuCard(
                        imageUrl: 'assets/images/specialist.png',
                        title: 'Especialidade',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ReserveScreenSpecialist();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MenuCard(
                        imageUrl: 'assets/images/sexual_health.png',
                        title: 'Saúde sexual',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ReserveScreenSexualHealth();
                              },
                            ),
                          );
                        },
                      ),
                      MenuCard(
                        imageUrl: 'assets/images/immunisation.png',
                        title: 'Imunização',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ReserveScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

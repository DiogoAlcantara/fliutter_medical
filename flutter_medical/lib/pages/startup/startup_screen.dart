// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_medical/utils/consts.dart';
import 'package:flutter_medical/pages/startup/login_page.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/my_header.dart';

class StartupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 480,
            imageUrl: 'assets/images/doctor.png',
            child: HeaderLogo(),
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
                  Text(
                    'Não deixe para amanhã!',
                    style: TextStyle(
                        fontSize: 32,
                        color: AppConsts.mPrimaryTextColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Sua saúde é nossa prioridade, marque\n'
                    ' uma consulta com um de nossos especialistas ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppConsts.mPrimaryTextColor, fontSize: 18),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(36),
                    child: FlatButton(
                      color: AppConsts.mButtonColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Agende Agora',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

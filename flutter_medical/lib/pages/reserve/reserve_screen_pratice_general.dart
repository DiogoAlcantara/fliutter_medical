import 'package:flutter/material.dart';
import 'package:flutter_medical/utils/consts.dart';
import 'package:flutter_medical/model/choose_model.dart';
import 'package:flutter_medical/pages/reserve/widget/choose_date.dart';
import 'package:flutter_medical/pages/reserve/widget/choose_time_group.dart';
import 'package:flutter_medical/pages/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/pages/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class ReserveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 258,
            imageUrl: 'assets/images/avatar_head.png',
            child: Column(
              children: <Widget>[
                MyAppbar(),
                SizedBox(
                  height: 16,
                ),
                UserInfo(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ChooseSlot(),
                  SizedBox(
                    height: 32,
                  ),
                  ChooseTimeGroup(
                    title: 'Manhã',
                    list: [
                      ChooseModel('09.00 AM'),
                      ChooseModel('09.30 AM', check: true),
                      ChooseModel('10.30 AM'),
                      ChooseModel('11.00 AM'),
                      ChooseModel('11.30 AM'),
                      ChooseModel('12.00 AM'),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ChooseTimeGroup(
                    title: 'Tarde',
                    list: [
                      ChooseModel('14.00 PM'),
                      ChooseModel('14.30 PM'),
                      ChooseModel('15.00 PM'),
                      ChooseModel('15.30 PM'),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ChooseTimeGroup(
                    title: 'Noite',
                    list: [
                      ChooseModel('18.00 PM'),
                      ChooseModel('19.30 PM'),
                      ChooseModel('20.00 PM'),
                      ChooseModel('20.30 PM'),
                      ChooseModel('21.00 PM'),
                      ChooseModel('22.30 PM'),
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

class ChooseSlot extends StatelessWidget {
  const ChooseSlot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Escolha uma data',
          style: TextStyle(
            color: AppConsts.mTitleTextColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ChooseDate(
              week: 'Seg',
              date: '26',
            ),
            ChooseDate(
              week: 'Ter',
              date: '27',
              check: true,
            ),
            ChooseDate(
              week: 'Qua',
              date: '28',
            ),
            ChooseDate(
              week: 'Qui',
              date: '29',
            ),
            ChooseDate(
              week: 'Sex',
              date: '30',
            ),
            ChooseDate(
              week: 'Sab',
              date: '31',
            ),
          ],
        )
      ],
    );
  }
}

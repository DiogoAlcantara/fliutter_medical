import 'package:flutter/material.dart';
import 'package:flutter_medical/utils/consts.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/avatar_pratice_general.png',
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Dr.João',
                style: TextStyle(
                  color: AppConsts.mButtonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Clinico Geral',
                style: TextStyle(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}

class UserInfoEspecialist extends StatelessWidget {
  const UserInfoEspecialist({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/avatar_especialist.png',
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Dr.Mateus',
                style: TextStyle(
                  color: AppConsts.mButtonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pneumologista',
                style: TextStyle(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}

class UserInfoSexualHealth extends StatelessWidget {
  const UserInfoSexualHealth({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/avatar_sexual_health.png',
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Dra.Larissa',
                style: TextStyle(
                  color: AppConsts.mButtonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Saúde Sexual',
                style: TextStyle(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}

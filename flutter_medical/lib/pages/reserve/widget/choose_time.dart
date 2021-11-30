import 'package:flutter/material.dart';
import 'package:flutter_medical/utils/consts.dart';

class ChooseTime extends StatelessWidget {
  final String time;
  final bool check;

  const ChooseTime({
    Key key,
    this.time,
    this.check = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: check ? AppConsts.mYellowColor : Colors.transparent,
        border: Border.all(
            color: check ? AppConsts.mYellowColor : AppConsts.mTitleTextColor, width: 0.5),
        borderRadius: BorderRadius.circular(36),
      ),
      child: Text(
        time,
        style: TextStyle(
            fontSize: 12, color: check ? Colors.white : AppConsts.mTitleTextColor),
      ),
    );
  }
}
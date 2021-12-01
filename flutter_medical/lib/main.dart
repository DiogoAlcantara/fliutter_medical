import 'package:flutter/material.dart';
import 'package:flutter_medical/utils/consts.dart';
import 'package:flutter_medical/pages/startup/startup_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HealthCare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppConsts.mBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartupScreen(),
    );
  }
}

import 'package:app_challenge_2k22/base_models/appColors.dart';
import 'package:app_challenge_2k22/login_pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.darkBlue,
            secondary: AppColors.darkBlue),
      ),
      home: Login()
    );
  }
}
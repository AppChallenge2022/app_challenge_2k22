import 'package:app_challenge_2k22/api/installersCard.dart';
import 'package:app_challenge_2k22/api/planscard.dart';
import 'package:app_challenge_2k22/api/resultInstallers.dart';
import 'package:app_challenge_2k22/api/resultPlans.dart';
import 'package:app_challenge_2k22/geo_pages/map.dart';
import 'package:app_challenge_2k22/login_pages/login.dart';
import 'package:app_challenge_2k22/login_pages/search.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

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
        useMaterial3: true,
        colorSchemeSeed: Color.fromARGB(1, 82, 181, 152),
      ),
      home: ResultInstallers(value: 'value', option: 'option',)
    );
  }
}
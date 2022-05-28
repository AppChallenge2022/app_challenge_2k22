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
        primarySwatch: Colors.green,
      ),
      home: ResultPlans(value: 'value', option: 'option')
    );
  }
}
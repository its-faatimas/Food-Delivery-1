import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodly/screens/home/home_page.dart';
import 'package:foodly/screens/on_boarding/on_boarding_page.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingPage(),
    );
  }
}

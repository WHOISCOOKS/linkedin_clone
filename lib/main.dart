import 'package:flutter/material.dart';
import 'package:flutter_app_linkedin/screens/welcome_page/welcome_page.dart';

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
      title: 'App LinkeIn Clone',
      home: WelcomePage(),
    );
  }
}

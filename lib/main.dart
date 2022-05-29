import 'package:flutter/material.dart';
import 'package:just_learn/welcome_page.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

// Color d_blue = HexColor('#3B82F6');
const d_blue = const Color(0xFF3B82F6);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Boms App',
        debugShowCheckedModeBanner: false,
        home: WelcomePage());
  }
}

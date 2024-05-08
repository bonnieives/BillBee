import 'package:bill_bee/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'screens/initial_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InitialPage(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
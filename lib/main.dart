import 'package:flutter/material.dart';

import './auth/login.dart'; // import the separated LoginPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JHCSC',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0xFFEBF4E1),
        primaryColor: Color(0xFF90B77D),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFF90B77D),
        ),
      ),
      home: LoginPage(), // Render the login page
    );
  }
}

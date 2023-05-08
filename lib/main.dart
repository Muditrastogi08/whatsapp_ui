import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff075e54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xff25d366),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff075e54),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

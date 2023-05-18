import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uisecond/Provider/home_provider.dart';
import 'package:uisecond/splash_screen.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Homeprovider>(
          create: (_) => (Homeprovider()),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
        fontFamily: 'Helvetica Neue',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xff25d366),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff075e54),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

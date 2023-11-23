import 'package:delivery_app/pages/home.dart';
import 'package:delivery_app/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'swiftBite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash':(_) => const Splash(),
        '/home':(_) => const Home(),
      },
      home: const Splash(),
    );
  }
}

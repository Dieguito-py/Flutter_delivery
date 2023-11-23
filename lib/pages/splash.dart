import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
  super.initState();
  Future.delayed(const Duration(seconds: 3)).then((_) => Navigator.of(context).pushReplacementNamed('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Color(0xffFFF0D6),
      body: Stack(
        children:[
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Image(
              image: AssetImage('assets/images/swiftBite.png'),
              height: 88,
              width: 265,
              )
            ),
        ],
      ),
    );
  }
}
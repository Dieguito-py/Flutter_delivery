import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFF0D6),
      body: Stack(
        children:[
          Align(
            alignment: AlignmentDirectional(0, -0.19),
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
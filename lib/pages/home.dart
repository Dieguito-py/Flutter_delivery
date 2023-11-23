import 'package:delivery_app/pages/product.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HhomeState();
}

class HhomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/swhomepage.png')),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.push(
              context,
                  MaterialPageRoute(builder: (context) => const Product()),
                );
              },
              child: const Image(image: AssetImage('assets/images/hmb.png'))),
            const Image(image: AssetImage('assets/images/pzz.png')),
            const Image(image: AssetImage('assets/images/ssh.png')),
          ],
        ),
      ),
    );
  }
}


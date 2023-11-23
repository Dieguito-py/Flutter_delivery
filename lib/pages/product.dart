import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/produto.png')),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                _exibirImagemPopup(context);
              },
              child: const Image(
                image: AssetImage('assets/images/buy.png'
                )
              )
            ),
          ],
        ),
      ),
    );
  }
  void _exibirImagemPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          backgroundColor: Colors.white,
          content:  Image(image: AssetImage('assets/images/ok.png')) 
          
        );
      },
    );

    // Fechar o popup após 5 segundos
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pop();
    });
  }
}
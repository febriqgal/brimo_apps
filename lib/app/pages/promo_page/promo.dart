import 'package:brimo/const.dart';
import 'package:flutter/material.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: iBack,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Promo'),
      ),
      body: const Center(
        child: Text(
          'Promo',
        ),
      ),
    );
  }
}

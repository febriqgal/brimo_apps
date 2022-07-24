import 'package:flutter/material.dart';

class BukaRekeningBaruPageView extends StatelessWidget {
  const BukaRekeningBaruPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buka Rekening Baru'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Buka Rekening Baru is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

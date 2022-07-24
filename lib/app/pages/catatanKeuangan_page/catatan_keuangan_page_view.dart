import 'package:brimo/const.dart';
import 'package:flutter/material.dart';

class CatatanKeuanganPageView extends StatelessWidget {
  const CatatanKeuanganPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: iBack,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Catatan Keuangan'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Catatan Keuangan PageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:brimo/const.dart';
import 'package:flutter/material.dart';

class DetailAktivitas extends StatelessWidget {
  const DetailAktivitas({Key? key}) : super(key: key);

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
        title: const Text('Detail Aktivitas'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Detail Aktivitas',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

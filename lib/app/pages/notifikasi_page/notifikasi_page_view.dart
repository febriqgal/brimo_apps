import 'package:brimo/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotifikasiPageView extends StatelessWidget {
  const NotifikasiPageView({Key? key}) : super(key: key);
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
          title: const Text('Notifikasi'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 100,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue,
                      Color.fromARGB(255, 9, 83, 145),
                    ],
                  ),
                ),
              ),
              title: Text('Notifikasi ${index + 1}'),
              subtitle: Text('Isi Notifikasi ${index + 1}'),
              trailing: SvgPicture.asset('assets/arrow_right.svg'),
              onTap: () {},
            );
          },
        ));
  }
}

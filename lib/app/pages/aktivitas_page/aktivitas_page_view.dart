import 'package:brimo/app/pages/aktivitas_page/detail_aktivitas.dart';
import 'package:flutter/material.dart';

class AktivitasPageView extends StatelessWidget {
  const AktivitasPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aktivitas'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/sort.png',
                width: 24,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
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
                height: 50,
                width: 50,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Aktivitas ${index + 1}'),
                  Text('Sumber Dana ${index + 1}'),
                ],
              ),
              subtitle: Text('${index + 1} Juni 2022'),
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.green,
                ),
                height: 20,
                width: 100,
                child: const Center(
                    child: Text(
                  'Sukses',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailAktivitas()));
              },
            );
          },
        ));
  }
}

import 'package:brimo/app/pages/login_page/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AkunView extends StatelessWidget {
  const AkunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 8),
          // PENGATURAN
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Pengaturan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 0.01,
              )
            ]),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: const Text('Fast Menu'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text('Keamanan'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // BANTUAN
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Bantuan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 0.01,
              )
            ]),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: const Text('Syarat & Ketentuan'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text('Pusat Bantuan'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text('Kontak Kami'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // INFORMASI
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Informasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 0.01,
              )
            ]),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: const Text('Info Kurs'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text('Info Saham BRI'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text('Lokasi ATM BRI'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text('Lokasi Kantor BRI'),
                  trailing: SvgPicture.asset('assets/arrow_right.svg'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Redesign by: Febriqgal🔥',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: Colors.red,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ),
              );
            },
            child: const Text('Keluar'),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

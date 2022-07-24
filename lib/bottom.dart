import 'package:brimo/app/pages/planning/plannning_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app/pages/aktivitas_page/aktivitas_page_view.dart';
import 'app/pages/akun_page/akun_view.dart';
import 'app/pages/home_page/home_page_view.dart';
import 'app/pages/mutasi_page/mutasi_page_view.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _HomeViewState();
}

class _HomeViewState extends State<Bottom> {
  int pageIndex = 0;
  List<Widget> pages = <Widget>[
    const HomePageView(),
    const MutasiPageView(),
    const PlanningPage(),
    const AktivitasPageView(),
    const AkunView(),
  ];
  changeIndex(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        currentIndex: pageIndex,
        onTap: changeIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home.svg',
              height: 28,
              color: pageIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/mutasi.svg',
              height: 28,
              color: pageIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/plus.png',
              height: 28,
              color: pageIndex == 2 ? Colors.blue : Colors.grey,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/aktivitas.svg',
              height: 28,
              color: pageIndex == 3 ? Colors.blue : Colors.grey,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/person.svg',
              height: 28,
              color: pageIndex == 4 ? Colors.blue : Colors.grey,
            ),
            label: 'home',
          ),
        ],
      ),
    );
  }
}

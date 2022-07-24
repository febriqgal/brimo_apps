import 'package:badges/badges.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:brimo/app/feature/briva_page/briva.dart';
import 'package:brimo/app/feature/brizzi_page/brizzi.dart';
import 'package:brimo/app/feature/dompet_digital_page/dompet_digital.dart';
import 'package:brimo/app/feature/lainnya_page/lainnya.dart';
import 'package:brimo/app/feature/listrik_page/listrik.dart';
import 'package:brimo/app/feature/pulsa_data_page/pulsa_data.dart';
import 'package:brimo/app/feature/tarik_tunai_page/tarik_tunai.dart';
import 'package:brimo/app/feature/transfer_page/transfer.dart';
import 'package:brimo/app/pages/catatanKeuangan_page/catatan_keuangan_page_view.dart';
import 'package:brimo/app/pages/infoSaldo_page/info_saldo_page_view.dart';
import 'package:brimo/app/pages/notifikasi_page/notifikasi_page_view.dart';
import 'package:brimo/app/pages/promo_page/promo.dart';
import 'package:brimo/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;

    List img = [
      'assets/gambar1.jpg',
      'assets/gambar2.jpg',
      'assets/gambar3.jpg',
      'assets/gambar4.jpg',
    ];
    RxBool isObscure = false.obs;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/brimo.png',
          height: 40,
        ),
        centerTitle: true,
        actions: [
          Badge(
            badgeColor: const Color(0xFFEB7024),
            position: const BadgePosition(
              top: 7,
              end: 9,
            ),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotifikasiPageView(),
                  ),
                );
              },
              icon: SvgPicture.asset(
                'assets/notif.svg',
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // SALDO REKENING
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Saldo Rekening Utama',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Obx(
                      () => Row(
                        children: [
                          Text(
                            // ignore: unrelated_type_equality_checks
                            isObscure == true
                                ? 'Rp $saldo'
                                : 'Rp ${saldo.replaceAll(RegExp(r"."), "•")}',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () => isObscure.toggle(),
                            // ignore: unrelated_type_equality_checks
                            child: isObscure == true
                                ? SvgPicture.asset(
                                    'assets/eye.svg',
                                    color: Colors.blue,
                                  )
                                : SvgPicture.asset(
                                    'assets/eyehide.svg',
                                    color: Colors.grey,
                                  ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InfoSaldoPageView(),
                    ),
                  ),
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/lainnya.png',
                      height: 24,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          // PERSENTASE SALDO REKENING
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatatanKeuanganPageView(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 10), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularPercentIndicator(
                      radius: 60.0,
                      animation: true,
                      animationDuration: 5000,
                      circularStrokeCap: CircularStrokeCap.round,
                      lineWidth: 12.0,
                      percent: 0.5,
                      center: const Text("50%"),
                      progressColor: Colors.blue,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/masuk.png',
                              height: 30,
                              color: Colors.teal,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Pemasukan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Rp 23.000.000'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/keluar.png',
                              height: 30,
                              color: Colors.red,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Pengeluaran',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Rp 22.000.000'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/selisih.png',
                              height: 30,
                              color: Colors.blue,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Selisih',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Rp 1.000.000'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // PEMBAYARAN
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: kWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //PULSA/DATA
                        GestureDetector(
                          onTap: () {
                            showFlexibleBottomSheet(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              bottomSheetColor: Colors.transparent,
                              minHeight: 0,
                              initHeight: 0.7,
                              isSafeArea: true,
                              maxHeight: 1,
                              context: context,
                              builder: (
                                BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset,
                              ) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      AppBar(
                                        elevation: 0,
                                        leading: Container(),
                                        title: Container(
                                          height: 5,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        actions: [
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/x.png',
                                              height: 24,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                        centerTitle: true,
                                      ),
                                      const PulsaDataPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            width: 70,
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue,
                                          Color.fromARGB(255, 9, 83, 145),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/pulsa.png',
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Pulsa',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        //TRANSFER
                        GestureDetector(
                          onTap: () {
                            showFlexibleBottomSheet(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              bottomSheetColor: Colors.transparent,
                              minHeight: 0,
                              initHeight: 0.7,
                              isSafeArea: true,
                              maxHeight: 1,
                              context: context,
                              builder: (
                                BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset,
                              ) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      AppBar(
                                        elevation: 0,
                                        leading: Container(),
                                        title: Container(
                                          height: 5,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        actions: [
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/x.png',
                                              height: 24,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                        centerTitle: true,
                                      ),
                                      const TransferPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            width: 70,
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue,
                                          Color.fromARGB(255, 9, 83, 145),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/transfer.png',
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text('Transfer')
                              ],
                            ),
                          ),
                        ),
                        //DOMPET DIGITAL
                        GestureDetector(
                          onTap: () {
                            showFlexibleBottomSheet(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              bottomSheetColor: Colors.transparent,
                              minHeight: 0,
                              initHeight: 0.7,
                              isSafeArea: true,
                              maxHeight: 1,
                              context: context,
                              builder: (
                                BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset,
                              ) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      AppBar(
                                        elevation: 0,
                                        leading: Container(),
                                        title: Container(
                                          height: 5,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        actions: [
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/x.png',
                                              height: 24,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                        centerTitle: true,
                                      ),
                                      const DompetDigitalPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            width: 70,
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue,
                                          Color.fromARGB(255, 9, 83, 145),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/wallet.png',
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'E-Wallet',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        //BRIZZI
                        GestureDetector(
                          onTap: () {
                            showFlexibleBottomSheet(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              bottomSheetColor: Colors.transparent,
                              minHeight: 0,
                              initHeight: 0.7,
                              isSafeArea: true,
                              maxHeight: 1,
                              context: context,
                              builder: (
                                BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset,
                              ) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      AppBar(
                                        elevation: 0,
                                        leading: Container(),
                                        title: Container(
                                          height: 5,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        actions: [
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/x.png',
                                              height: 24,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                        centerTitle: true,
                                      ),
                                      const BrizziPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            width: 70,
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue,
                                          Color.fromARGB(255, 9, 83, 145),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/card.png',
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text('FEBzzi')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //TARIK TUNAI
                        GestureDetector(
                          onTap: () {
                            showFlexibleBottomSheet(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              bottomSheetColor: Colors.transparent,
                              minHeight: 0,
                              initHeight: 0.7,
                              isSafeArea: true,
                              maxHeight: 1,
                              context: context,
                              builder: (
                                BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset,
                              ) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      AppBar(
                                        elevation: 0,
                                        leading: Container(),
                                        title: Container(
                                          height: 5,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        actions: [
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/x.png',
                                              height: 24,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                        centerTitle: true,
                                      ),
                                      const TarikTunaiPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            width: 70,
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue,
                                          Color.fromARGB(255, 9, 83, 145),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/tariktunai.png',
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Tarik Tunai',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        //BRIVA
                        GestureDetector(
                          onTap: () {
                            showFlexibleBottomSheet(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              bottomSheetColor: Colors.transparent,
                              minHeight: 0,
                              initHeight: 0.7,
                              isSafeArea: true,
                              maxHeight: 1,
                              context: context,
                              builder: (
                                BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset,
                              ) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      AppBar(
                                        elevation: 0,
                                        leading: Container(),
                                        title: Container(
                                          height: 5,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        actions: [
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/x.png',
                                              height: 24,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                        centerTitle: true,
                                      ),
                                      const BrivaPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            width: 70,
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue,
                                          Color.fromARGB(255, 9, 83, 145),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/card.png',
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text('FEBVA')
                              ],
                            ),
                          ),
                        ),
                        //LISTRIK
                        GestureDetector(
                          onTap: () {
                            showFlexibleBottomSheet(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              bottomSheetColor: Colors.transparent,
                              minHeight: 0,
                              initHeight: 0.7,
                              isSafeArea: true,
                              maxHeight: 1,
                              context: context,
                              builder: (
                                BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset,
                              ) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      AppBar(
                                        elevation: 0,
                                        leading: Container(),
                                        title: Container(
                                          height: 5,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        actions: [
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/x.png',
                                              height: 24,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                        centerTitle: true,
                                      ),
                                      const ListrikPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            width: 70,
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue,
                                          Color.fromARGB(255, 9, 83, 145),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/listrik.png',
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text('Listrik')
                              ],
                            ),
                          ),
                        ),
                        //LAINNYA
                        GestureDetector(
                          onTap: () {
                            showFlexibleBottomSheet(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              bottomSheetColor: Colors.transparent,
                              minHeight: 0,
                              initHeight: 0.7,
                              isSafeArea: true,
                              maxHeight: 1,
                              context: context,
                              builder: (
                                BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset,
                              ) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      AppBar(
                                        elevation: 0,
                                        leading: Container(),
                                        title: Container(
                                          height: 5,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        actions: [
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/x.png',
                                              height: 24,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                        centerTitle: true,
                                      ),
                                      const LainnyaPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            width: 70,
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue,
                                          Color.fromARGB(255, 9, 83, 145),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/lainnya.png',
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text('Lainnya')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // SPESIAL UNTUKMU
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Spesial Untukmu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PromoPage(),
                        ),
                      );
                    },
                    child: const Text('Lihat Semua')),
              ],
            ),
          ),
          // CAROUSEL SLIDER
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child: FlutterCarousel.builder(
                itemCount: img.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    img[itemIndex],
                    fit: BoxFit.cover,
                  ),
                ),
                options: CarouselOptions(
                  height: 200.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 1),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  pageSnapping: true,
                  scrollDirection: Axis.horizontal,
                  pauseAutoPlayOnTouch: true,
                  pauseAutoPlayOnManualNavigate: true,
                  pauseAutoPlayInFiniteScroll: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  disableCenter: true,
                  showIndicator: true,
                  slideIndicator: const CircularSlideIndicator(
                    padding: EdgeInsets.all(16),
                    indicatorRadius: 4,
                    itemSpacing: 16,
                    currentIndicatorColor: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QRView(
                key: GlobalKey(debugLabel: 'QR'),
                onQRViewCreated: (onQRViewCreated) {},
              ),
            ),
          );
        },
        shape: const CircleBorder(),
        child: SvgPicture.asset(
          'assets/qrscan.svg',
          color: Colors.blue,
        ),
      ),
    );
  }
}

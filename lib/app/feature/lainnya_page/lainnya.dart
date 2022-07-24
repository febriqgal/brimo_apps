import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import '../briva_page/briva.dart';
import '../brizzi_page/brizzi.dart';
import '../dompet_digital_page/dompet_digital.dart';
import '../listrik_page/listrik.dart';
import '../pulsa_data_page/pulsa_data.dart';
import '../tarik_tunai_page/tarik_tunai.dart';
import '../transfer_page/transfer.dart';

class LainnyaPage extends StatelessWidget {
  const LainnyaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                                    borderRadius: BorderRadius.circular(8),
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
                        const Text('Pulsa/Data'),
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
                                    borderRadius: BorderRadius.circular(8),
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
                                    borderRadius: BorderRadius.circular(8),
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
                                    borderRadius: BorderRadius.circular(8),
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
                        const Text('Brizzi')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    borderRadius: BorderRadius.circular(8),
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
                        const Text('Tarik Tunai')
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
                                    borderRadius: BorderRadius.circular(8),
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
                        const Text('BRIVA')
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
                                    borderRadius: BorderRadius.circular(8),
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
                                    borderRadius: BorderRadius.circular(8),
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
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
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
                                    borderRadius: BorderRadius.circular(8),
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
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('-')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

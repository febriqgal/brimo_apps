import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:brimo/const.dart';
import 'package:flutter/material.dart';

class TarikTunaiPage extends StatelessWidget {
  const TarikTunaiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(height: 16),
        const Text(
          'Sumber Dana',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GestureDetector(
            onTap: () {
              showFlexibleBottomSheet(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                bottomSheetColor: Colors.transparent,
                minHeight: 0,
                initHeight: 0.3,
                maxHeight: 1,
                context: context,
                builder: (
                  BuildContext context,
                  ScrollController scrollController,
                  double bottomSheetOffset,
                ) {
                  return SizedBox(
                    height: kHeight,
                    width: kWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 170,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'BRI',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '1234 5434 5969 453',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              '@Febriqgal',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              saldo,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Lihat Detail >',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              width: kWidth,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 9,
                    spreadRadius: 0.1,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/fb.jpg',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              noRek,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('Rp $saldo'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/arrow_down.png',
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Nominal',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: kWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 9,
                spreadRadius: 0.1,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('100.000')),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('200.000')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('300.000')),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('480.000')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('500.000')),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('600.000')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('700.000')),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('800.000')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('900.000')),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 9,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        height: 48,
                        child: const Center(child: Text('1.000.000')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32),
        GestureDetector(
          onTap: () {
            showFlexibleBottomSheet(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              bottomSheetColor: Colors.transparent,
              minHeight: 0,
              initHeight: 0.5,
              maxHeight: 1,
              context: context,
              builder: (
                BuildContext context,
                ScrollController scrollController,
                double bottomSheetOffset,
              ) {
                return SizedBox(
                  height: kHeight,
                  width: kWidth,
                  child:
                      const Center(child: Text('Ini Halaman Lihat Petunjuk')),
                );
              },
            );
          },
          child: const Text(
            'Lihat Petunjuk',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BrizziPage extends StatelessWidget {
  const BrizziPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 9,
                spreadRadius: 0.1,
                offset: Offset(0, 10),
              ),
            ],
          ),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.blue,
                                Color.fromARGB(255, 9, 83, 145),
                              ],
                            ),
                          ),
                          margin: const EdgeInsets.only(right: 16),
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(
                          width: 50,
                          child: Text(
                            'Nama Rek. ${index + 1}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                          child: Center(
                            child: Text(
                              'Bank BRI',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 9,
                spreadRadius: 0.1,
                offset: Offset(0, 10),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Topup BRIZZI',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Nomor Kartu',
                    prefixIcon: const Icon(Icons.payment),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/qrscan.svg',
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
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
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
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
            width: kWidth,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/info.png',
                        height: 24,
                        color: Colors.blue,
                      ),
                      const Text(
                        ' Keterangan',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '\n1. Untuk Handpodle yang memiliki NFC, silahkan Update saldo kartu anda setelah melakukan Topup.\n\n2. Untuk Handpodle yang tidak memiliki NFC, silahkan Update saldo kartu anda setelah melakukan Topup dengan melalui ATM BRI atau EDC BRI yang tersedia Agen BRIlink atau Kantor Cabang BRI.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

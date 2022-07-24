import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MutasiPageView extends StatelessWidget {
  const MutasiPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mutasi',
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              height: 180,
              width: kWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 4),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: '1234 5678 9012 3456',
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: SvgPicture.asset(
                              'assets/date.svg',
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              showDatePicker(
                                  useRootNavigator: false,
                                  context: context,
                                  initialDate: DateTime.now().toUtc(),
                                  firstDate: DateTime(2020).toUtc(),
                                  lastDate: DateTime.now().toUtc());
                            },
                          ),
                          hintText: 'Pilih Tanggal',
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fixedSize: Size(kWidth, 40),
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text('Cari'),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Mutasi ${index + 1}'),
                    subtitle: Text('${index + 1} Juni 2022'),
                    trailing: Text('Rp. ${index + 1}.000.000'),
                  );
                },
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}

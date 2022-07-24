import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 16,
          ),
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
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
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
                      faker.person.name(),
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
                          fontSize: 10,
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
          height: 500,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Daftar Transfer',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const SizedBox(
                  height: 40,
                  child: TextField(
                    textDirection: TextDirection.ltr,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      hintText: 'Cari',
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ListTile(
                        minVerticalPadding: 0,
                        contentPadding: const EdgeInsets.all(0),
                        leading: Image.asset(
                          'assets/card.png',
                          height: 24,
                          color: Colors.blue,
                        ),
                        title: Text(
                          faker.person.name(),
                        ),
                        subtitle: Text(
                          random.integer(98890, min: 10000).toString(),
                        ),
                        trailing: const Text(
                          'Bank BRI',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(
                kWidth,
                40,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Tambah Daftar Baru',
            ),
          ),
        ),
      ],
    );
  }
}

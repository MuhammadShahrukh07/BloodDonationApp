import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 55, 56, 1),
        title: const Text(
          'JOHAR TOWN, LAHORE',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        actions: const [
          Icon(Icons.person_2_rounded),
        ],
      ),
      body: Column(children: [
        Container(
          height: 569,
          width: double.infinity,
          child: Image.asset(
            'assets/images/map.png',
            height: 569,
            width: 428,
          ),
        ),
        Column(
          children: [
            const Text(
              'Blood Groups',
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  const Chip(
                    backgroundColor: Color.fromRGBO(235, 55, 56, 1),
                    label: Text(
                      'O+',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ), //Text
                  ),
                  const SizedBox(width: 20),
                  Chip(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    label: const Text(
                      'B+',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Chip(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    label: const Text(
                      'AB+',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Chip(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    label: const Text(
                      'A+',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Chip(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    label: const Text(
                      'A-',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Chip(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    label: const Text(
                      'B-',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(width: 25),
                Chip(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromRGBO(235, 55, 56, 1),
                    ),
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  label: const Text(
                    'AB-',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(235, 55, 56, 1),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Chip(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromRGBO(235, 55, 56, 1),
                    ),
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  label: const Text(
                    'O-',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(235, 55, 56, 1),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Chip(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromRGBO(235, 55, 56, 1),
                    ),
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  label: const Text(
                    'ALL',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(235, 55, 56, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(177, 48),
                      backgroundColor: const Color.fromRGBO(235, 55, 56, 1),
                    ),
                    child: const Text('SHOW ALL'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(177, 48),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'ADD NEW DONOR',
                      style: TextStyle(
                        color: Color.fromRGBO(235, 55, 56, 1),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(height: 180, color: Color(0xffE4F3FE)),
            Container(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(width: 10),

                  Expanded(
                    child: Container(
                      height: 20,
                      color: const Color(0xffE0E0E0),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 10),
            Divider(
              color: Color(0xffE0E0E0),
              thickness: 2,
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 200,
                        color: Color(0xffA5D6A7),
                      ),
                      Container(height: 10),
                      Container(
                        height: 40,
                        width: 200,
                        color: Color(0xffA5D6A7),
                      ),
                    ],
                  ),
                  Container(height: 40, width: 10),
                  Container(width: 80, height: 90, color: Color(0xffFFCC80)),
                  Container(height: 40, width: 10),
                  Container(width: 80, height: 90, color: Color(0xffFFCC80)),
                ],
              ),
            ),
            Container(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 80, width: 90, color: Color(0xffE1BEE8)),
                  Container(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        color: Color(0xffCF93D9),
                      ),
                      Container(
                        color: Color(0xffE1BEE8),
                        height: 20,
                        width: 80,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        color: Color(0xffCF93D9),
                      ),
                    ],
                  ),
                  Container(width: 20),
                  Container(height: 80, width: 90, color: Color(0xffE1BEE8)),
                  Container(height: 80, width: 90, color: Color(0xffF3E5F6)),
                ],
              ),
            ),
            Container(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 40, width: 190, color: Color(0xffB2DFDC)),
                  Container(height: 40, width: 10),
                  Container(height: 40, width: 190, color: Color(0xff80CBC4)),
                ],
              ),
            ),
            Container(height: 10),
            Container(width: 390, height: 40, color: Color(0xffE0E0E0)),
          ],
        ),
      ),
    );
  }
}

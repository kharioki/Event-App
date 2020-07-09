import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF102733),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/logo.png', height: 28),
                      SizedBox(width: 8),
                      Row(
                        children: [
                          Text(
                            'UVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'NTO',
                            style: TextStyle(
                              color: Color(0xFFFFA700),
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset('assets/notify.png', height: 25),
                      SizedBox(width: 16),
                      Image.asset('assets/menu.png', height: 25),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Kharioki !!!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Let's explore what's happening nearby",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Image.asset(
                          'assets/profile.png',
                          height: 35,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

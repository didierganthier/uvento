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
                color: Color(0xff102733),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 50,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/logo.png",
                        height: 30,
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

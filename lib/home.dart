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
                vertical: 60,
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/logo.png",
                        height: 28,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "UVE",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            "NTO",
                            style: TextStyle(
                              color: Color(0xffFFCD00),
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 27,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.grid_view,
                        size: 27,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello, Didier",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Let's explore what's happening nearby",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Image.asset(
                          "assets/didier.jpg",
                          height: 30,
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

class DateTile extends StatelessWidget {
  String weekDay;
  String date;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Color(0xffFCCD00) : Colors.transparent,
      child: Column(
        children: [
          Text(
            "10",
            style: TextStyle(color: isSelected ? Colors.black54 : Colors.white),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            "Sun",
            style: TextStyle(color: isSelected ? Colors.black54 : Colors.white),
          ),
        ],
      ),
    );
  }
}

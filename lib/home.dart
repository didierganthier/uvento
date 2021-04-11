import 'package:flutter/material.dart';
import 'package:uvento/data/data.dart';
import 'package:uvento/models/date_models.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DateModel> dates = <DateModel>[];
  String todayDateIs = "12";

  @override
  void initState() {
    super.initState();
    dates = getDates();
  }

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
                        size: 22,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.grid_view,
                        size: 22,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      itemCount: dates.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => print(dates[index].weekDay),
                          child: DateTile(
                            weekDay: dates[index].weekDay,
                            date: dates[index].date,
                            isSelected: todayDateIs == dates[index].date,
                          ),
                        );
                      },
                    ),
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
  final weekDay, date, isSelected;

  DateTile({this.weekDay, this.date, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFCCD00) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: TextStyle(color: isSelected ? Colors.black54 : Colors.white),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            weekDay,
            style: TextStyle(color: isSelected ? Colors.black54 : Colors.white),
          ),
        ],
      ),
    );
  }
}

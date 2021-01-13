import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
  // DateTime now = new DateTime.now();
  // DateTime date = new DateTime(now.year, now.month, now.day);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Alarm',
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  // DateTime _currentDate = DateTime.now();

  DateTime _day = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // String formattedyear = DateFormat.yMEd().format(_year);
    String formattedday = DateFormat('EEE d MMM y').format(_day);
    // String formattedDay = DateFormat.format(_day);

    // String formattedDate = DateFormat.yMMMd().format(_currentDate);

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0XffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40.0,
              width: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/girl.jpg'),
                          fit: BoxFit.fill,
                        )),
                  ),
                )
              ],
            ),
            Container(
              height: 20.0,
              width: w,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Good Morning!!!',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height: 15.0,
                  width: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$formattedday',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                  width: 20.0,
                ),
                Container(
                  height: 220.0,
                  child: ClockView(),
                ),
                SizedBox(
                  height: 20.0,
                  width: 20.0,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          height: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'USA',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    ),
                                    Text(
                                      'New York',
                                      style: TextStyle(
                                          color: Color(0xFF737373),
                                          fontSize: 25.0),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Text(
                                  '8:00  AM',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          height: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'INDIA',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    ),
                                    Text(
                                      'Pune',
                                      style: TextStyle(
                                          color: Color(0xFF737373),
                                          fontSize: 23.0),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Text(
                                  '11:00  AM',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.0),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF167FD8),
                  // Color(0xFF1771BF),
                  // Color(0xFF126CB7),
                  Color(0xFF0C59A7),
                  Color(0xFF0E0E0E)
                ]),
          ),
          child: Icon(
            Icons.alarm_add,
            color: Color(0xFF77B4F1),
          ),
        ),
      ),
    );
  }
}

class ClockView extends StatefulWidget {
  @override
  _ClockViewState createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      child: Transform.rotate(
        angle: -pi / 2,
        child: CustomPaint(
          painter: ClockPainter(),
        ),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  var dateTime = DateTime.now();

  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    var mainCircle = Paint()..color = Colors.black;

    var smallCircle = Paint()..color = Colors.white;

    canvas.drawCircle(center, radius, mainCircle);
    canvas.drawCircle(center, radius - 7, smallCircle);
    canvas.drawCircle(center, 7, mainCircle);

    var minHandColor = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..color = Colors.black
      ..strokeCap = StrokeCap.round;

    var minHandX = centerX + 70 * cos(dateTime.minute * 6 * pi / 180);
    var minHandY = centerX + 70 * sin(dateTime.minute * 6 * pi / 180);
    canvas.drawLine(center, Offset(minHandX, minHandY), minHandColor);

    // var minHandX = centerX + 60 * cos(dateTime.minute * 6 * pi / 180);
    // var minHandY = centerX + 60 * sin(dateTime.minute * 6 * pi / 180);
    // canvas.drawLine(center, Offset(minHandX, minHandY), minHandColor);
    var hourHandColor = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    var hourHandX = centerX +
        50 * cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    var hourHandY = centerX +
        50 * sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandColor);
    // var hourHandX = centerX +
    //     40 * cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    // var hourHandY = centerX +
    //     40 * sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    // canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandColor);
    //
    // canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandColor);

    var secondX = centerX + 60 * cos(dateTime.second * 6 * pi / 180);
    var secondY = centerY + 60 * sin(dateTime.second * 6 * pi / 180);

    var secondHandColor = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..color = Colors.black;
    canvas.drawLine(center, Offset(secondX, secondY), secondHandColor);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

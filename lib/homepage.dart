import 'package:flutter/material.dart';
import 'package:learnflutter/circleprogress.dart';
import 'package:learnflutter/circularWidget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int daysNumber = 0;
  bool counter = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Color(0xFFF8F8F8),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              color: Color(0xFF424242),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(
                              'عداد الـ 90 يوم',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF433F67),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward),
                              color: Color(0xFF424242),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Color(0xFF433F67),
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 100.0),
                    child: CustomPaint(
                      foregroundPainter: CircleProgress(daysNumber.toDouble()),
                      child: Container(width: 300, height: 100),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 45.0),
                    color: Color(0xFFF9F9F9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  offset: Offset(-2, 2)),
                            ],
                          ),
                          child: Text(
                            'عدد الأيام الآن بدون إباحيه',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              color: Color(0xFF8E9FC0),
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 50.0),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  offset: Offset(-2, 2)),
                            ],
                          ),
                          child: Text(
                            'عدد الأيام المتبقيه',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              color: Color(0xFF8E9FC0),
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 35.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 16),
                              onPressed: () {
                                setState(() {
                                  if (counter == false) {
                                    counter = true;
                                  } else {
                                    counter = false;
                                  }
                                });
                              },
                              color: Color(0xFFFF3366),
                              child: Text(
                                counter ? 'إيقاف العداد' : "تشغيل العداد",
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 16),
                              onPressed: () {
                                setState(() {
                                  daysNumber = 0;
                                });
                              },
                              color: Color(0xFF433F67),
                              child: Text(
                                'إعادة العداد للصفر',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CircularWidget(
              color: Color(0xFFE02D5A),
              radius: 140.0,
              top: 170.0,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 5)),
              ],
            ),
            CircularWidget(
              radius: 130.0,
              top: 175.0,
              color: Color(0xFFFF3366),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '90 / $daysNumber',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          shadows: [
                            Shadow(
                                blurRadius: 0,
                                color: Color(0xFF755DA7),
                                offset: Offset(3, 1))
                          ]),
                    ),
                    Text(
                      'يوم',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Color(0xFFBF264C),
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //top..
            CircularWidget(
              radius: 80.0,
              color: Color(0xFFEEEEF3),
              top: 325.0,
              right: 20,
            ),
            //bottom..
            CircularWidget(
              radius: 80.0,
              top: 425.0,
              right: 20.0,
              color: Color(0xFFEEEEF3),
            ),
            //top..
            CircularWidget(
              radius: 70.0,
              top: 330.0,
              right: 25.0,
              color: Color(0xFF433F67),
              child: Center(
                child: Text(
                  '$daysNumber',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    shadows: [
                      Shadow(
                          blurRadius: 0,
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(2, 1))
                    ],
                  ),
                ),
              ),
            ),
            //bottom..
            CircularWidget(
              radius: 70.0,
              top: 430.0,
              right: 25.0,
              color: Color(0xFFFF3366),
              child: Center(
                child: Text(
                  '${90 - daysNumber}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    shadows: [
                      Shadow(
                          blurRadius: 0,
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(3, 1))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

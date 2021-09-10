import 'package:flutter/material.dart';
import 'package:gamingappui/constant.dart';
import 'package:gamingappui/mypage.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(41, 30, 83, 1),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.all(33),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi, Shakeeb ",
                      style: kText,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemPage()));
                      },
                      child: Icon(
                        Icons.category,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(111, 0, 244, 1),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
                          child: Text(
                            "Games",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 18),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(81, 73, 112, 1),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
                          child: Text(
                            "Categories",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "Continue Playing",
                    style: kText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Transform(
                        transform: Matrix4.skewY(-0.05),
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(209, 4, 43, 1),
                                  Color.fromRGBO(214, 61, 99, 1)
                                ]
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Angry Bird",
                              style: kText,
                            ),
                            Text(
                              "LEVEL 10",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, right: 15, left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircularPercentIndicator(
                                    radius: 55,
                                    lineWidth: 6,
                                    animation: true,
                                    percent: 0.2,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.black,
                                  ),
                                  Transform(
                                    transform: Matrix4.skewX(-0.05),
                                    origin: Offset(50,50),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                                        child: Text(
                                          "Play",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 90,left: 140,

                        child: Image(
                          image: AssetImage("images/angry.png"),
                          height: 140,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "Discover Games",
                    style: kText,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Row(
                      children: [
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Transform(
                              transform: Matrix4.skewY(-0.2),
                              child: Container(
                                height: 270,
                                width: 170,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(234, 70, 61, 1),
                                        Color.fromRGBO(238, 109, 43, 1),
                                      ]
                                  ),
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 100, left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Super Mario",
                                    style: kText,
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(245, 196, 148, 1).withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15),
                                      child: Row(
                                        children: [
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                            ),
                                          ),
                                          Icon(Icons.star, color: Colors.white)
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    "120M+",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                    ),
                                  )
                                ],
                              ),
                            ),
                           Positioned(
                             bottom: 170,
                             left: 20,
                             child: Image(
                                 image: AssetImage(
                                     "images/mario.png"
                                 ),
                             height: 160,
                             ),
                           )
                          ],
                        ),
                        SizedBox(width: 20),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Transform(
                              transform: Matrix4.skewY(-0.2),
                              child: Container(
                                height: 270,
                                width: 170,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(234, 70, 61, 1),
                                        Color.fromRGBO(90, 50, 140, 1),
                                      ]
                                  ),
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 100, left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Traffic Racer",
                                    style: kText,
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(245, 196, 148, 1).withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15),
                                      child: Row(
                                        children: [
                                          Text(
                                            "4.8",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18
                                            ),
                                          ),
                                          Icon(Icons.star, color: Colors.white)
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    "700M+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 210,
                              right: 1.0,
                              child: Image(
                                alignment: Alignment.center,
                                image: AssetImage(
                                    "images/car.png",
                                ),
                                height: 120,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamingappui/constant.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class ItemPage extends StatefulWidget {

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(41, 30, 83, 1),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: FabCircularMenu(
          alignment: Alignment.topRight,
          ringDiameter: 500,
          ringWidth: 130,
          fabElevation: 1,
          fabColor: Colors.white,
          ringColor: Color.fromRGBO(209, 164, 231, 1),
          fabOpenIcon: Icon(Icons.supervised_user_circle, color: Colors.black87, size: 30,),
          fabCloseIcon: Icon(Icons.supervised_user_circle, color: Colors.black87, size: 30,),
          children: [
            Image(
              height: 60,
                image: AssetImage("images/mario.png"),
            ),
            Image(
              height: 60,
              image: AssetImage("images/car.png"),
            ),
            Image(
              height: 60,
              image: AssetImage("images/angry.png"),
            ),
            Image(
              height: 60,
              image: AssetImage("images/mario.png"),
            ),
            Image(
              height: 60,
              image: AssetImage("images/angry.png"),
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 15, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shakeeb Khan",
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 27,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                        Text(
                          "@gmail.com",
                          style: kSmallText,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "30",
                  style: kLargeText,

                ),
                Text(
                  "Followers",
                  style: kSmallText,
                ),
                SizedBox(height: 20),
                Divider(
                  color: Colors.amber,
                  endIndent: 280,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "20",
                  style: kLargeText,

                ),
                Text(
                  "Following",
                  style: kSmallText,
                ),
                SizedBox(height: 20),
                Divider(
                  color: Colors.amber,
                  endIndent: 280,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "LEVEL 10",
                  style: kLargeText,
                ),
                Text(
                  "Since 3 Days",
                  style: kSmallText,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Leader Board",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 190,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          height: 40,
                            image: AssetImage("images/mario.png"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 170,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.purpleAccent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          height: 40,
                          image: AssetImage("images/mario.png"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          height: 40,
                          image: AssetImage("images/mario.png"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 130,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          height: 40,
                          image: AssetImage("images/mario.png"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          height: 40,
                          image: AssetImage("images/mario.png"),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

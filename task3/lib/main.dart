import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Mycard2(),
    );
  }
}

class Mycard2 extends StatefulWidget {
  const Mycard2({Key? key}) : super(key: key);

  @override
  State<Mycard2> createState() => _Mycard2State();
}

class _Mycard2State extends State<Mycard2> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text:
                    const TextSpan(text: "Good Morning!", children: <TextSpan>[
              TextSpan(
                  text: "\nJamie Lannister",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22))
            ])),
          ],
        ),
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.account_circle,
          color: Colors.grey,
          size: 45,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.add,
              color: Colors.purple[400],
              size: 30,
            ),
          )
        ],
        toolbarHeight: 65,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.60,
            child: Column(children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("May 2019")),
                    ),
                    CarouselSlider(
                      items: [
                        //CARD 1
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Current Balance",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text("₹47,400.00",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 12),
                                          child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.class__rounded,
                                                color: Colors.red,
                                                size: 20,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text("HDFC Bank",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              Text("**** **** **** 9233",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("Exp Date",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Text("12/22",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            color: Colors.deepPurpleAccent[700],
                            shadowColor: Colors.black,
                            elevation: 7,
                          ),
                        ),
                        //CARD 2
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Current Balance",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text("₹30,400.00",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 12),
                                          child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.class__rounded,
                                                color: Colors.amberAccent,
                                                size: 20,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text("ICICI Bank",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              Text("**** **** **** 6731",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("Exp Date",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Text("12/23",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            color: Colors.green[900],
                            shadowColor: Colors.black,
                            elevation: 7,
                          ),
                        ),
                        //CARD 3
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Current Balance",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text("₹12,400.00",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 12),
                                          child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.class__rounded,
                                                color: Colors.blueAccent,
                                                size: 20,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text("SBI Bank",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              Text("**** **** **** 1636",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("Exp Date",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Text("05/24",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            color: Colors.redAccent[700],
                            shadowColor: Colors.black,
                            elevation: 7,
                          ),
                        ),
                        //CARD 4
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Current Balance",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text("₹31,400.00",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 12),
                                          child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.class__rounded,
                                                color: Colors.black,
                                                size: 20,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text("AXIS Bank",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              Text("**** **** **** 9274",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("Exp Date",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Text("12/25",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            color: Colors.limeAccent[700],
                            shadowColor: Colors.black,
                            elevation: 7,
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          viewportFraction: 0.75,
                          height: 170,
                          onPageChanged: (i, r) {
                            setState(() {
                              _current = i;
                            });
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: AnimatedSmoothIndicator(
                        activeIndex: _current,
                        count: 4,
                        effect: const WormEffect(
                            spacing: 8.0,
                            radius: 2.0,
                            dotWidth: 7.0,
                            dotHeight: 7.0,
                            paintStyle: PaintingStyle.stroke,
                            strokeWidth: 1.5,
                            activeDotColor: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Balance Outstanding"),
                              Text(
                                "₹22,300.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Minimum Due"),
                              Text(
                                "₹4,300.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 12, bottom: 6),
                                  child: Text("Due Date"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text("06 May'19",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.red)),
                                ),
                                Container(
                                  width: 80,
                                  height: 20,
                                  child: OutlinedButton(
                                    onPressed: null,
                                    style: ButtonStyle(
                                        side: MaterialStateProperty.all(
                                            const BorderSide(
                                                width: 1, color: Colors.pink)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)))),
                                    child: const Text(
                                      "2 days left",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 6),
                                  child: Text("Pay By"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text("04 May'19",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Material(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.deepPurpleAccent[700],
                        child: Ink(
                          width: 275,
                          height: 35,
                          child: Center(
                              child: Text(
                            "Pay Now",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 13, bottom: 15),
                        child: Container(
                          color: Colors.grey,
                          height: 4,
                          width: 40,
                        ),
                      ),
                      Text("Transaction History",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Colors.deepPurpleAccent[700],
                                    size: 10,
                                  ),
                                  Container(
                                    color: Colors.grey,
                                    height: 80,
                                    width: 2,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text("Life style retail store",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text("6 May, 5:16PM"),
                                  ),
                                  Container(
                                    color: Colors.pink,
                                    width: 60,
                                    height: 15,
                                    child: OutlinedButton(
                                      onPressed: null,
                                      style: ButtonStyle(
                                          side: MaterialStateProperty.all(
                                              const BorderSide(
                                                  width: 1,
                                                  color: Colors.pink)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0)))),
                                      child: const Text(
                                        "Paid",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 67),
                        child: Text(
                          "₹2,999.00",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavigationBar(
                  backgroundColor: Colors.white70,
                  currentIndex: 0,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      label: "Home",
                      icon: Icon(
                        Icons.home,
                        size: 30,
                      ),
                    ),
                    BottomNavigationBarItem(
                        label: "Analysis",
                        icon: Icon(Icons.bar_chart_outlined)),
                    BottomNavigationBarItem(
                      label: "Notification",
                      icon: Icon(Icons.notifications),
                    ),
                    BottomNavigationBarItem(
                        label: "User",
                        icon: Icon(Icons.person_rounded),
                        backgroundColor: Colors.black),
                  ],
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.black,
                  iconSize: 20,
                  onTap: null,
                  elevation: 5),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Container(
                  color: Colors.grey,
                  height: 4,
                  width: 150,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

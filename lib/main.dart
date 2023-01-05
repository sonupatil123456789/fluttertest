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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home_page(),
    );
  }
}

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: screenwidth,
        height: screenheight,
        child: Column(
          children: [
            ////////////////////////
            SizedBox(
              height: screenheight * 0.04,
            ),
            /////////////////////////
            Container(
                width: screenwidth * 0.85,
                height: screenheight * 0.20,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(36, 42),
                        blurRadius: 58)
                  ],
                  color: Color.fromRGBO(209, 133, 133, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // color: Colors.amber,
                      width: screenwidth * 0.72,
                      height: screenheight * 0.18,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                width: screenwidth * 0.36,
                                height: screenheight * 0.05,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                )),
                            SizedBox(
                              height: screenheight * 0.02,
                            ),
                            Container(
                                padding: EdgeInsets.fromLTRB(60, 10, 20, 10),
                                width: screenwidth * 0.72,
                                height: screenheight * 0.06,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(168, 215, 172, 1),
                                )),
                          ]),
                    ),
                  ],
                )),
            ////////////////////////
            SizedBox(
              height: screenheight * 0.06,
            ),
            /////////////////////////
            Container(
              width: screenwidth * 0.85,
              height: screenheight * 0.28,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      width: screenwidth * 0.85,
                      height: screenheight * 0.20,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(36, 42),
                              blurRadius: 58)
                        ],
                        color: Color.fromRGBO(209, 133, 133, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.amber,
                            width: screenwidth * 0.72,
                            height: screenheight * 0.18,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: screenheight * 0.08,
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.fromLTRB(60, 10, 20, 10),
                                      width: screenwidth * 0.72,
                                      height: screenheight * 0.06,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(168, 215, 172, 1),
                                      )),
                                ]),
                          ),
                        ],
                      )),
                  Positioned(
                    top: 6,
                    child: Container(
                        // padding: EdgeInsets.fromLTRB(60, 10, 20, 10),
                        width: screenwidth * 0.36,
                        height: screenheight * 0.06,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(196, 196, 196, 1),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

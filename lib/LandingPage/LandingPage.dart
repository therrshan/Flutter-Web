import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_portfolio/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            Container(
              color: const Color.fromARGB(255, 230, 218, 206),
              width: screenSize.width * 0.43,
              height: screenSize.height * 0.85,
            ),
            Container(
              color: Colors.white,
              width: screenSize.width * 0.57,
              height: screenSize.height * 0.85,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 10,
              shadowColor: Colors.black,
              child: Container(
                color: const Color.fromRGBO(244, 236, 230, 1.0),
                padding: const EdgeInsets.all(0.0),
                width: 375,
                height: 500,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 214, 202, 189),
                        radius: 100,
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage('assets/images/pfp.png'),
                        ),
                      ),
                      Column(
                        children: const [
                          Text("Darshan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text("Rajopadhye",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        height: 2,
                        width: 100,
                        color: const Color(0xFF051441),
                      ),
                      const Text("Computer Engineer",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.normal)),
                      Container(
                        color: Colors.white,
                        width: 375,
                        height: 50,
                        alignment: Alignment.bottomCenter,
                      )
                    ]),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(30),
              width: 400,
              height: 500,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Hello",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 60,
                            fontWeight: FontWeight.bold)),
                    const Text("Here's who I am and what I do",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.normal)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 10, bottom: 10),
                          color: const Color(0xFF077bd7),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Text(
                            "Resume",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 10, bottom: 10),
                          color: const Color(0xFF077bd7),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Text(
                            "Projects",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("")
                  ]),
            ),
          ],
        )
      ],
    );
  }
}

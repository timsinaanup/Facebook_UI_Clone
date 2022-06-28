import 'dart:ui';
import 'package:facebook_clone/screen/login_page_lite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class landing_page extends StatelessWidget {
  const landing_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Center(
            child: Text(
          "Facebook Lite",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
        )),
        toolbarHeight: 25,
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 2, bottom: 2),
          child: Text(
            "Tap your profile picture to log in",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Container(
              height: 80,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Image.asset(
                        "images/profile1.jpg",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Anup Timsina"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      ":",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Container(
              height: 80,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Image.asset(
                        "images/profile2.png",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Timsina Anup"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      ":",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}

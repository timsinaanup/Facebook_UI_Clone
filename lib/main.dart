import 'package:facebook_clone/screen/date_pick.dart';
import 'package:facebook_clone/screen/landing_page.dart';
import 'package:facebook_clone/screen/login_page_lite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(Facebook_lite_clone());
}

class Facebook_lite_clone extends StatelessWidget {
  const Facebook_lite_clone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: landing_page(),
    );
  }
}

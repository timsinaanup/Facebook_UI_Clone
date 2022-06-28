import 'package:facebook_clone/screen/email_page.dart';
import 'package:facebook_clone/screen/login_page_lite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class pick_date extends StatefulWidget {
  const pick_date({Key? key}) : super(key: key);

  @override
  State<pick_date> createState() => _pick_dateState();
}

class _pick_dateState extends State<pick_date> {
  DateTime? _myDateTime;
  String time = 'Your date';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1.0,
          automaticallyImplyLeading: false,
          title: Center(
              child: (Text(
            "Join Facebook",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),
          )))),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    color: Colors.white),
                width: MediaQuery.of(context).size.width,
                child: Text(time,
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  _myDateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1980, 1, 1),
                      lastDate: DateTime.now());

                  setState(() {
                    time = _myDateTime.toString();
                  });
                },
                child: Text("Date ")),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Login_page_lite()));
                },
                child: Text("login page")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ask_email()));
                },
                child: Text("back"))
          ],
        ),
      ),
    );
  }
}

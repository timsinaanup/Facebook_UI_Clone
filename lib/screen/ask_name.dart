import 'package:facebook_clone/screen/login_page_lite.dart';
import 'package:facebook_clone/screen/ph_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ask_name extends StatelessWidget {
  const ask_name({Key? key}) : super(key: key);

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
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 16),
            )),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "What's Your Name?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter the name you use in real life.",
              style: TextStyle(fontSize: 17, color: Colors.grey.shade700),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(height: 15, child: Text("First Name"))),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(height: 15, child: Text("Last Name"))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero)),
                            ),
                          
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                 
                       Expanded(
                         flex: 1,
                         child: Container(
                           height: 30,
                           child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.zero))),
                                             
                                         ),
                         ),
                       ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => ask_number()),
                    );
                  },
                  child: Text("Next"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                    endIndent: 10,
                  )),
                  Text("or"),
                  Expanded(
                      child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                    indent: 10,
                  ))
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Login_page_lite()),
                  );
                },
                child: Text("Log in"))
          ],
        ));
  }
}

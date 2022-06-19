import 'package:facebook_clone/screen/create_new_account.dart';
import 'package:facebook_clone/screen/landing_page.dart';
import 'package:facebook_clone/screen/newsfeed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login_page_lite extends StatefulWidget {
  const Login_page_lite({Key? key}) : super(key: key);

  @override
  State<Login_page_lite> createState() => _Login_page_liteState();
}

class _Login_page_liteState extends State<Login_page_lite> {
  bool _ispwvs = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //APPBAR
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          toolbarHeight: 60.0,
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            "Facebook",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Mobile Number or Email",
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey.shade100,
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey.shade100,
                  height: 35,
                  child: TextFormField(
                    obscureText: _ispwvs,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _ispwvs = !_ispwvs;
                          });
                        },
                        icon: Icon(
                            _ispwvs ? Icons.visibility : Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const newsfeed(),
                            ),
                          );
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(fontSize: 18),
                        ))),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        style: ButtonStyle(alignment: Alignment.bottomLeft),
                        onPressed: () {

Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => landing_page()));                          
                        },
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.left,
                        ))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        "or",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Divider(
                          indent: 10,
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                create_new_account()),
                      );
                    },
                    child: Text("Create new account")),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "English (US)",
                      style: TextStyle(color: Color.fromARGB(255, 49, 40, 40)),
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    child: TextButton(onPressed: () {}, child: Text("नेपाली"))),
                Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    child: TextButton(onPressed: () {}, child: Text("हिन्दी"))),
                Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {}, child: Text("More languages...")))
              ],
            ),
          ),
        ));
  }
}

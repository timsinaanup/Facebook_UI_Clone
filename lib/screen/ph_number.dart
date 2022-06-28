import 'package:facebook_clone/screen/email_page.dart';
import 'package:flutter/material.dart';

class ask_number extends StatelessWidget {
  const ask_number({Key? key}) : super(key: key);

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
          )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Enter Your Mobile Number",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter the mobile number where you can be reached. You can hide this from your profile later.",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text("Mobile Number")),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => ask_email()));
                    },
                    child: Text("Next")),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ask_email()));
                  },
                  child: Text(
                    "Sign up with email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

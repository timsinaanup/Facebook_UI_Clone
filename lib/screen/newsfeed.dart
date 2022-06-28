import 'package:flutter/material.dart';

class newsfeed extends StatelessWidget {
  const newsfeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.blue, child: Text("data")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text("back")),
              
              Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ),
               Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ), Container(
                height: 400,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ),
                                    ],
          ),
        ),
      ),
    );
  }
}

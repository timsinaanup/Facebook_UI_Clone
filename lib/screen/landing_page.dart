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
        toolbarHeight: 20,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(children: [
        Container(
          height: 20,
          width: MediaQuery.of(context).size.width,
          child: Text(
            "  Tap your profile picture to log in ",
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          height: 70,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            child: Row(
              children: [
                Flexible(flex: 2, child: Container(
                  color: Colors.amber,
                )),
                SizedBox(width: 5,),
                Flexible(flex:8, child: Container(
                  height: MediaQuery.of(context).size.height,
                 width: MediaQuery.of(context).size.width,
                 child: TextButton(onPressed: (){}, child: Text("Anup Timsina",style: TextStyle(color: Colors.black),textAlign:TextAlign.right,))
                )),SizedBox(width: 5,),
                Flexible(flex: 1, child: Container(color: Colors.yellow,)),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 0.5,
        ),
        Container(
          height: 70,
          color: Colors.white,
        ),
        SizedBox(
          height: 0.5,
        ),
        Container(
          height: 70,
          color: Colors.white,
        ),
        ElevatedButton(onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Login_page_lite()));
        }, child: Text("log in"))

        
      ]),
    );
  }
}

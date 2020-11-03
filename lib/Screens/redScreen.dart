import 'dart:ffi';

import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class NoteLog extends StatefulWidget {
  @override
  _noteLogState createState() => _noteLogState();
}

class _noteLogState extends State<NoteLog> {
  void returnCall() {
    setState(() {
      count += 1;
    });
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuilderContext)=>OnboardingScreen()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text("lead this Fucking boolshit"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tap your fucking dick",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              count.toString(),
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 40.0),
            )
          ],
        ),
      ),
      floatingActionButton: FlatButton(
        onPressed: () {
          returnCall();
        },
        child: Icon(
          Icons.add,
          color: Colors.red,
          size: 50.0,
        ),
        splashColor: Colors.white,
        shape: CircleBorder(),
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}

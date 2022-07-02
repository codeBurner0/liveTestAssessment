import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  DateTime today = DateTime.now();
  var studentname = '';
  Screen3({Key? key, required this.studentname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hi $studentname",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Image(
            image: NetworkImage(
                'data:image/jpeg;base64,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'),
            height: 200,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              child: Text(
                "You have successfully completed Mobile Hybrid App developement course",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 28,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Instructor name:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Pankaj kapoor",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text("Date: ${today.day}/${today.month}/${today.year}")),
          )
        ],
      ),
    ));
  }
}

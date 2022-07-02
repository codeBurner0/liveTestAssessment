import 'package:flutter/material.dart';
import 'package:project1/Screen2.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen-1")),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(
                "Training",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.purple),
              ),
              SizedBox(
                height: 30,
              ),
              Image(
                image: NetworkImage(
                    'http://www.knacktraining.com/wp-content/uploads/2019/01/Illustration.png'),
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                  child: Text("Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

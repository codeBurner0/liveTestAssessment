import 'package:flutter/material.dart';
import 'package:project1/Screen3.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? name = null;
  TextEditingController _name = new TextEditingController();
  String? email = null;
  TextEditingController _email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text("Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                  errorText: name,
                  hintText: "Student Name",
                  border: UnderlineInputBorder(),
                  prefixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 45),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email-Id",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 6, 236, 240)),
                    border: UnderlineInputBorder(),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.alternate_email_sharp))),
              ),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_name.text.isEmpty) {
                        name = "Field should not be blank in Name field";
                      } else if (_email.text.isEmpty) {
                        email = "Field should not be blank in Email field";
                      } else {
                        name = null;
                        email = null;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Screen3(studentname: _name.text);
                        }));
                      }
                    });
                  },
                  child: Text("           Login               ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

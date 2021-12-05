import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basicloginui/main.dart';

class MailLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: buildMailBody(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class buildMailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BuildLogo(),
              Text(
                "Sign in Screen",
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20),
              buildTextField(),
              SizedBox(height: 10),
              buildButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class buildTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'Email'),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        )
      ],
    );
  }
}

class buildButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF18D191),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

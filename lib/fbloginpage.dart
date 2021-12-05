import 'package:flutter/material.dart';
import 'package:basicloginui/mailloginpage.dart';

class fbLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: buildFbBody(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class buildFbBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("face.png"),
                ),
              ),
              Text(
                "Facebook Login Screen",
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20),
              buildTextField(),
              SizedBox(height: 10),
              buildFbButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class buildFbButton extends StatelessWidget {
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
                  primary: Color(0xFF4364A1),
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

import 'package:flutter/material.dart';
import 'package:basicloginui/fbloginpage.dart';
import 'package:basicloginui/googleloginpage.dart';
import 'package:basicloginui/mailloginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BuildLogo(),
            BuildText(),
            BuildEmailButton(),
            BuildFacebookGoogleButton(),
          ],
        ),
      ),
    );
  }
}

class BuildLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF18D191),
          ),
          child: Icon(
            Icons.local_offer,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50, right: 80),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF45E0EC),
          ),
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 60, right: 5),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFFFFCE56),
          ),
          child: Icon(
            Icons.directions_car,
            color: Colors.white,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 35, left: 70),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: const Color(0xFFFC6A7F),
          ),
          child: const Icon(
            Icons.place,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class BuildText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 70.0),
          child: Text(
            "Login UI",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ],
    );
  }
}

class BuildEmailButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF18D191),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MailLoginPage()),
                  );
                },
                child: Text(
                  "Sign In With Email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class BuildFacebookGoogleButton extends StatelessWidget {
  const BuildFacebookGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 5),
            child: Container(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4364A1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fbLoginPage()),
                  );
                },
                child: Text(
                  "Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 20),
            child: Container(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFDF513B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => googleLoginPage()),
                  );
                },
                child: Text(
                  "Google",
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

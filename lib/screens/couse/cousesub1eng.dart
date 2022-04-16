import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/couse/m.1/eng1.dart';
import 'package:learn_more_more/screens/couse/m.2/eng2.dart';
import 'package:learn_more_more/screens/couse/m.3/eng3.dart';
import 'package:learn_more_more/screens/couse/m.4/eng4.dart';
import 'package:learn_more_more/screens/couse/m.5/eng5.dart';
import 'package:learn_more_more/screens/couse/m.6/eng6.dart';
import 'package:learn_more_more/success/drawer.dart';

class cousesubeng extends StatelessWidget {
  const cousesubeng({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ภาษาอังกฤษ"),
      ),
      body: Container(
          color: Colors.green[50],
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        colors: [Colors.blue.shade100, Colors.blue.shade100])),
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/logos/education.png'),
                      height: 67,
                    ),
                    buildButton1eng(context),
                    buildButton2eng(context),
                    buildButton3eng(context),
                    buildButton4eng(context),
                    buildButton5eng(context),
                    buildButton6eng(context),
                  ],
                )),
          )),
      drawer: Drawer(child: tapbar()),
    );
  }

  Container buildButton1eng(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("มัธยมศึกษาปีที่ 1",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => eng1()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton2eng(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("มัธยมศึกษาปีที่ 2",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => eng2()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton3eng(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("มัธยมศึกษาปีที่ 3",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => eng3()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton4eng(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("มัธยมศึกษาปีที่ 4",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => eng4()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton5eng(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("มัธยมศึกษาปีที่ 5",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => eng5()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton6eng(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("มัธยมศึกษาปีที่ 6",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => eng6()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }
}

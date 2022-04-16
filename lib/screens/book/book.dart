import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/couse/couse.dart';
import 'package:learn_more_more/success/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class book1 extends StatelessWidget {
  const book1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เอกสารรายวิชา"),
      ),
      body: Container(
          color: Colors.green[50],
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        colors: [Colors.blue.shade100, Colors.blue.shade50])),
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
                    buildButton1(),
                    buildButton2(),
                    buildButton3(),
                    buildButton4(),
                    buildButton5(),
                    buildButton6(),
                  ],
                )),
          )),
      drawer: Drawer(child: tapbar()),
    );
  }

  Container buildButton1() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("วิทยาศาสตร์",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            launch(
                'https://drive.google.com/file/d/11hyd_skPtejrZ5V0FcibmsV7w3V2pn-S/view?usp=sharing')
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton2() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("คณิตศาสตร์",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            launch(
                'https://drive.google.com/file/d/11hyd_skPtejrZ5V0FcibmsV7w3V2pn-S/view?usp=sharing')
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton3() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ภาษาอังกฤษ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            launch(
                'https://drive.google.com/file/d/11hyd_skPtejrZ5V0FcibmsV7w3V2pn-S/view?usp=sharing')
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton4() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ภาษาไทย",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            launch(
                'https://drive.google.com/file/d/11hyd_skPtejrZ5V0FcibmsV7w3V2pn-S/view?usp=sharing')
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton5() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("สังคม",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            launch(
                'https://drive.google.com/file/d/11hyd_skPtejrZ5V0FcibmsV7w3V2pn-S/view?usp=sharing')
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton6() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("อื่นๆ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            launch(
                'https://drive.google.com/file/d/11hyd_skPtejrZ5V0FcibmsV7w3V2pn-S/view?usp=sharing')
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }
}

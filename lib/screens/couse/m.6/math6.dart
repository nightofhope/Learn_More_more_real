import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/couse/couse.dart';
import 'package:learn_more_more/screens/couse/cousesub1eng.dart';
import 'package:learn_more_more/screens/couse/cousesub1math.dart';
import 'package:learn_more_more/screens/couse/cousesub1other.dart';
import 'package:learn_more_more/screens/couse/cousesub1soc.dart';
import 'package:learn_more_more/screens/couse/cousesub1thai.dart';
import 'package:learn_more_more/success/drawer.dart';

class math6 extends StatelessWidget {
  const math6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คณิตศาสตร์ ม.6"),
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
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/logos/education.png'),
                          height: 67,
                        ),
                        m61math(context),
                        m62math(context),
                        m63math(context),
                        m64math(context),
                        m65math(context),
                        m66math(context),
                      ],
                    ),
                  ),
                )),
          )),
      drawer: Drawer(child: tapbar()),
    );
  }

//บท1
  Container m61math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("สถิติศาสตร์และข้อมูล",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => couse1()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

//บท2
  Container m62math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ข้อมูลเชิงคุณภาพ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => couse1()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

//บท3
  Container m63math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ข้อมูลเชิงปริมาณ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => couse1()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

//บท4
  Container m64math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ลำดับและอนุกรม",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => couse1()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

//บท5
  Container m65math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("แคลคูลัสเบื้องต้น",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => couse1()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

//บท6
  Container m66math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ตัวแปรสุ่ม",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => couse1()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }
}

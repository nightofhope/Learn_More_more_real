import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/couse/couse.dart';
import 'package:learn_more_more/screens/couse/cousesub1eng.dart';
import 'package:learn_more_more/screens/couse/cousesub1math.dart';
import 'package:learn_more_more/screens/couse/cousesub1other.dart';
import 'package:learn_more_more/screens/couse/cousesub1soc.dart';
import 'package:learn_more_more/screens/couse/cousesub1thai.dart';
import 'package:learn_more_more/success/drawer.dart';

class math5 extends StatelessWidget {
  const math5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คณิตศาสตร์ ม.5"),
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
                        m51math(context),
                        m52math(context),
                        m53math(context),
                        m54math(context),
                        m55math(context),
                        m56math(context),
                        m57math(context),
                        m58math(context),
                        m59math(context),
                      ],
                    ),
                  ),
                )),
          )),
      drawer: Drawer(child: tapbar()),
    );
  }

//บท1
  Container m51math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("เลขยกกำลัง",
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
  Container m52math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ฟังก์ชัน",
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
  Container m53math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ฟังก์ชันตรีโกณมิติ",
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
  Container m54math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("เมทริกซ์",
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
  Container m55math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("เวกเตอร์",
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
  Container m56math(BuildContext context) {
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

  //บท7
  Container m57math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("จำนวนเชิงซ้อน",
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

  //บท8
  Container m58math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("หลักการนับเบื้องต้น",
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

  //บท9
  Container m59math(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ความน่าจะเป็น",
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

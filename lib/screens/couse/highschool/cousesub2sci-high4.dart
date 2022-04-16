import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/couse/couse.dart';
import 'package:learn_more_more/screens/couse/m.4/sci4bio.dart';
import 'package:learn_more_more/screens/couse/m.4/sci4chem.dart';
import 'package:learn_more_more/screens/couse/m.4/sci4phy.dart';
import 'package:learn_more_more/success/drawer.dart';

class cousesub2sci4 extends StatelessWidget {
  const cousesub2sci4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("วิทยาศาสตร์ ม.4"),
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
                    buildButtonphy(context),
                    buildButtonbio(context),
                    buildButtonchem(context),
                  ],
                )),
          )),
      drawer: Drawer(child: tapbar()),
    );
  }

  Container buildButtonphy(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ฟิสิกส์",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => sci4phy()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButtonbio(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("ชีวะ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => sci4bio()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButtonchem(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("เคมี",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => sci4chem()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }
}

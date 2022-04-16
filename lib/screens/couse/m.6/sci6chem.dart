import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/couse/couse.dart';
import 'package:learn_more_more/screens/couse/cousesub1eng.dart';
import 'package:learn_more_more/screens/couse/cousesub1math.dart';
import 'package:learn_more_more/screens/couse/cousesub1other.dart';
import 'package:learn_more_more/screens/couse/cousesub1soc.dart';
import 'package:learn_more_more/screens/couse/cousesub1thai.dart';
import 'package:learn_more_more/success/drawer.dart';

class sci6chem extends StatelessWidget {
  const sci6chem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เคมี ม.6"),
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
                        m61scichem(context),
                      ],
                    ),
                  ),
                )),
          )),
      drawer: Drawer(child: tapbar()),
    );
  }

//บท1
  Container m61scichem(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        child: FlatButton(
          child: Text("สารชีวโมเลกุล",
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

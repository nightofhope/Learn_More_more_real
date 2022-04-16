import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/main.dart';
import 'package:learn_more_more/screens/login/newacc.dart';
import 'package:learn_more_more/screens/login/oldacc.dart';

class log1 extends StatelessWidget {
  const log1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn More", style: TextStyle(color: Colors.white)),
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
                        height: 120,
                        width: 120,
                      ),
                      buildButtonSignIn(context),
                      buildButtonregister(context),
                      buildButtonforgot(context)
                    ],
                  )),
            )));
  }

  Container buildButtonSignIn(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[300]),
        child: FlatButton(
          child: Text("Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => oldacc()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButtonregister(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[300]),
        child: FlatButton(
          child: Text("register",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
          textColor: Colors.white,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => newacc()))
          },
        ),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }
}

Container buildButtonforgot(BuildContext context) {
  return Container(
      constraints: BoxConstraints.expand(height: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.red[300]),
      child: FlatButton(
        child: Text("ลืมรหัสผ่าน/อีเมล์",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        textColor: Colors.white,
        color: Colors.transparent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => newacc()))
        },
      ),
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(12));
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/success/drawer.dart';

class cousesubother extends StatelessWidget {
  const cousesubother({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("อื่นๆ"),
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
                    buildButton1couseother(),
                    buildButton2couseother(),
                    buildButton3couseother(),
                    buildButton4couseother(),
                    buildButton5couseother(),
                    buildButton6couseother(),
                  ],
                )),
          )),
      drawer: Drawer(child: tapbar()),
    );
  }

  Container buildButton1couseother() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("การชงกาแฟ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton2couseother() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("การปลูกต้นไม้",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton3couseother() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("การตัดผม",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton4couseother() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("การฝึกทำสมาธิ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton5couseother() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("การดูแลผิวพรรณ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButton6couseother() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("การแสดง",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }
}

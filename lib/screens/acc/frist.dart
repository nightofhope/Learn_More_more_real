import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/acc/data.dart';
import 'package:learn_more_more/screens/login/login.dart';
import 'package:learn_more_more/success/drawer.dart';

class acc2 extends StatefulWidget {
  const acc2({Key? key}) : super(key: key);

  @override
  _acc2State createState() => _acc2State();
}

class _acc2State extends State<acc2> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ข้อมูลผู้ใช้งาน")),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                colors: [Colors.blue.shade100, Colors.blue.shade50])),
        margin: EdgeInsets.all(32),
        padding: EdgeInsets.all(24),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ชื่อผู้ใช้งาน : กรุณาเพิ่มข้อมูลผู้ใช้",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "นามสกุล   : กรุณาเพิ่มข้อมูลผู้ใช้",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "ระดับชั้น   : กรุณาเพิ่มข้อมูลผู้ใช้",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "โรงเรียน   : กรุณาเพิ่มข้อมูลผู้ใช้",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "อีเมล์ : ${auth.currentUser!.email}",
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                    constraints: BoxConstraints.expand(height: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue[300]),
                    child: FlatButton(
                      child: Text("เพิ่มข้อมูลผู้ใช้งาน",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      textColor: Colors.white,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormScreen()))
                      },
                    ),
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.all(12)),
                Container(
                    constraints: BoxConstraints.expand(height: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue[300]),
                    child: FlatButton(
                      child: Text("ออกจากระบบ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      textColor: Colors.white,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => log1()))
                      },
                    ),
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.all(12))
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(child: tapbar()),
    );
  }
}

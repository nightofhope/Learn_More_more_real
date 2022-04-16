import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/acc/data.dart';
import 'package:learn_more_more/screens/login/login.dart';
import 'package:learn_more_more/success/drawer.dart';

class DisplayScreen extends StatefulWidget {
  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ข้อมูลผู้ใช้งาน")),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("students").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: snapshot.data!.docs.map((document) {
                return Container(
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
                            "ชื่อผู้ใช้งาน : " + document['fname'],
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "นามสกุล   : " + document['lname'],
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "ระดับชั้น   : " + document['score'],
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "โรงเรียน   : " + document['email'],
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
                                child: Text("แก้ไขข้อมูลผู้ใช้งาน",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
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
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                textColor: Colors.white,
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => log1()))
                                },
                              ),
                              margin: EdgeInsets.only(top: 16),
                              padding: EdgeInsets.all(12))
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          }
        },
      ),
      drawer: Drawer(child: tapbar()),
    );
  }
}

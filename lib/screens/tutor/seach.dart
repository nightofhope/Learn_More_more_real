import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/acc/data.dart';
import 'package:learn_more_more/screens/login/login.dart';
import 'package:learn_more_more/success/drawer.dart';

class seach extends StatefulWidget {
  @override
  _seachState createState() => _seachState();
}

class _seachState extends State<seach> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ติวเตอร์ในระบบ")),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("tutors").snapshots(),
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
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(24),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ชื่อผู้ใช้งาน : " + document['fname'],
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "นามสกุล   : " + document['lname'],
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "วิชาที่สอน   : " + document['subject'],
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "ระดับชั้น   : " + document['level'],
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "เบอร์โทร   : " + document['number'],
                            style: TextStyle(fontSize: 20),
                          ),
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

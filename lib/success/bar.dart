import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_more_more/success/drawer.dart';
import 'package:learn_more_more/screens/acc/acc.dart';
import 'package:learn_more_more/screens/ans/ans.dart';
import 'package:learn_more_more/screens/book/book.dart';
import 'package:learn_more_more/screens/contact/contact.dart';
import 'package:learn_more_more/screens/couse/couse.dart';
import 'package:learn_more_more/screens/login/login.dart';
import 'package:learn_more_more/screens/news/news.dart';
import 'package:learn_more_more/screens/tutor/tutor.dart';

class bar extends StatelessWidget {
  const bar({Key? key, required this.title}) : super(key: key);

  final String title;
  get auth => FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn More')),
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Image(
                            image: AssetImage('assets/logos/education.png')),
                      ),
                      Text("Welcome to Learn More"),
                      Text(
                        "Email : ${auth.currentUser!.email}",
                        style: TextStyle(fontSize: 15),
                      ),
                    ])),
          )),

      //แถบบาร์
      drawer: const Drawer(child: tapbar()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_more_more/success/drawer.dart';

class ans1 extends StatelessWidget {
  const ans1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ถาม-ตอบ"),
      ),
      body: Center(
        child: Text("ถาม-ตอบ"),
      ),
      drawer: Drawer(child: tapbar()),
    );
  }
}

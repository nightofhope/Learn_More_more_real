import 'package:flutter/material.dart';
import 'package:learn_more_more/success/drawer.dart';

class news1 extends StatelessWidget {
  const news1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข่าวสารการศึกษา"),
      ),
      body: Center(
        child: Text("ข่าวสารการศึกษา"),
      ),
      drawer: Drawer(child: tapbar()),
    );
  }
}

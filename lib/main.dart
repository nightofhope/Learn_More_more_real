import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/login/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Learn More';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: log1(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_todo_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'My ToDo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: Home());
  }
}


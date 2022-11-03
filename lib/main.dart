import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Premier test',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MonPage()
    );
  }
}

class MonPage extends StatefulWidget {
  @override
  _MonPageState createState() => _MonPageState();
}

class _MonPageState extends State<MonPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test des bouttons'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          
        ],
      ),
    );
  }
}

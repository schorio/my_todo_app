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

  bool val1=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test des bouttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bienvenue'),

            Checkbox(
              onChanged: (bool? value) {
                setState(() => val1 = value!);
              },
              value: val1, 
            )
          ],
        ),
        
      ),
      

    );
  }
}

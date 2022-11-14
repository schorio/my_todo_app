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

  int radioVal=0;

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

            Row(
              children: [0,1,2,3,4,5]
                .map((int index) => Radio<int>(
                  value: index,
                  groupValue: radioVal,
                  onChanged: (int? value) {
                    setState(() => radioVal = value!);
                  },
                ))
                .toList(),         
            )
          ],
        ),
        
      ),
      

    );
  }
}

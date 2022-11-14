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

  int val1=0;

  void change( int s)
  {
    setState(() {
      val1=s;
    });
  }

  Widget radio()
  {
    List <Widget> _Button_radio = [];

    for(int i=0; i<4; i++)
    {
      _Button_radio.add(
        Radio(value: i, groupValue: val1, onChanged: change)
      );
    }

    Column column = Column(children: _Button_radio,);
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test des bouttons'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Bienvenue'),
            radio(),
          ],
        ),
        
      ),
      

    );
  }
}

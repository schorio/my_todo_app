import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Premier test',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: MonPage());
  }
}

class MonPage extends StatefulWidget {
  @override
  _MonPageState createState() => _MonPageState();
}

class _MonPageState extends State<MonPage> {
  int radioVal = 0;
  String valeur = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Test des bouttons'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Bienvenue $valeur $radioVal'),

            TextField(
              decoration: InputDecoration(
                labelText: 'Nom',
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                  size: 25,
                )
              ),
              onChanged: (value) {
                setState(() {
                  valeur = value;
                });
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [0, 1, 2, 3, 4, 5]
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

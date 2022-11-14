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

  String value='';
  int val = 0;

  void onShow() {
    setState(() {
      value = new DateTime.now().toString();
      val+=1;
    });
  }
  void offShow() {
    setState(() {
      val-=1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test des bouttons'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround ,
        children: <Widget>[
          Text(
            'value = $val , date = $value',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          IconButton(
            icon: Icon(Icons.account_balance_wallet_sharp, color: Colors.red,),
            onPressed: offShow,
            tooltip: "Moins",
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: onShow,
        backgroundColor: Colors.blue,
        child: Icon(Icons.account_balance_wallet_sharp),
      ),

      

    );
  }
}

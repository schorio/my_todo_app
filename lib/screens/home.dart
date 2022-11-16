import 'package:flutter/material.dart';
import 'package:my_todo_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Row(
          children: [
            Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
          ]
        )
      ),
      
      body: Container(
        child: Text('Mon Page d\'acceuil'),
      ),
    );
  }
}
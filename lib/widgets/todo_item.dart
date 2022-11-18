import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {

  final ToDo todo;

  const ToDoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
        child: ListTile(
          onTap: () {
            print('Test de clique du tache');
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)
          ),

          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),

          tileColor: Colors.white,

          leading: Icon(
            Icons.check_box,
            color: tdBlue,
            size: 20,
          ),

          title: Text(
            'Regarder l\'email',
            style: TextStyle(
              fontSize: 14,
              color: tdBlack,
              decoration: TextDecoration.lineThrough,
            ),
          ),

          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5)
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 13,
              icon: Icon(Icons.delete),
              onPressed: () {},
            ),
          ),
        ) 
      );
  }
}
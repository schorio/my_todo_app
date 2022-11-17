import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:my_todo_app/constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
          onTap: () { },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
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
            margin: EdgeInsets.symmetric(vertical: 12),
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
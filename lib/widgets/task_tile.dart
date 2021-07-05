import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  final String taskTitle;
  final VoidCallback longPressCallBack;


  TaskTile({required this.taskTitle,required this.longPressCallBack});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isCheck=false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: widget.longPressCallBack,
      title: Text(
        widget.taskTitle,
        style: TextStyle(
            decoration: isCheck ? TextDecoration.lineThrough : null),
      ),

      trailing: Checkbox(
        onChanged: (bool? newValue){
          setState(() {
            isCheck=!isCheck;
          });
        },
        value: isCheck,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}




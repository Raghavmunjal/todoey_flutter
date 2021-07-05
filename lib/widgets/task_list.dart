import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
          return ListView.builder(itemBuilder: (context,index){
            return TaskTile(taskTitle: taskData.tasks[index].name,longPressCallBack: (){
                  taskData.deleteTask(taskData.tasks[index]);
            },);
          },itemCount: taskData.taskCount,);
    });
  }

}
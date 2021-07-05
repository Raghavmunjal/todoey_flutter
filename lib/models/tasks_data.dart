// import 'package:flutter/foundation.dart';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier{

  List<Tasks>_tasks=[
    Tasks(name: 'Buy Milk'),
    Tasks(name: 'Buy Fruits'),
    Tasks(name: 'Buy Vegetables'),
  ];

  int get taskCount{
    return _tasks.length;
  }
  
  UnmodifiableListView<Tasks> get tasks{
    return UnmodifiableListView(_tasks);
   }
  
  void addTask(String title){
    final task=Tasks(name: title);
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Tasks task){
    _tasks.remove(task);
    notifyListeners();
  }

}
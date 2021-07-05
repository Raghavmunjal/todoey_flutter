import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title='';
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',style: TextStyle(fontSize: 30,color: Colors.lightBlueAccent,),textAlign: TextAlign.center,),
            TextField(autofocus: true,textAlign:TextAlign.center,onChanged: (newValue){
              title=newValue;
            },),
            SizedBox(height: 15,),
            TextButton(onPressed: (){
              Provider.of<TaskData>(context,listen: false).addTask(title);
              Navigator.pop(context);
            }, child: Text('Add',style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent)),)
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        ),
      ),
    );
  }
}

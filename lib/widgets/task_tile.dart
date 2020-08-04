import 'package:flutter/material.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';
import '../providers/tasks_provider.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  int taskIndex;

  TaskTile({this.task, this.taskIndex});

  @override
  Widget build(BuildContext context) {
    final taskData = Provider.of<TaskProvider>(context);
    return ListTile(
        title: Text(
          task.name,
          style: TextStyle(
              decoration: task.isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: task.isDone,
          onChanged: (val) {
            taskData.toogleDone(task);
          },
        ));
  }
}

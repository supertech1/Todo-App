import 'package:flutter/material.dart';
import './task_tile.dart';
import '../models/task.dart';
import '../providers/tasks_provider.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskData = Provider.of<TaskProvider>(context);
    return ListView.builder(
        itemCount: taskData.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(task: taskData.tasks[index], taskIndex: index);
        });
  }
}

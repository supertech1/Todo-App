import 'package:flutter/material.dart';
import 'package:todoey/providers/tasks_provider.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String name;
  @override
  Widget build(BuildContext context) {
    final taskData = Provider.of<TaskProvider>(context);
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              TextField(
                autofocus: true,
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
              ),
              RaisedButton(
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                child: Text("Add Text"),
                onPressed: () {
                  Task task = Task(name: name, isDone: false);
                  taskData.addTask(task);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

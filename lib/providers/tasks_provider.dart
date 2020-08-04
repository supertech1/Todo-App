import 'package:flutter/cupertino.dart';
import '../models/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Fish"),
    Task(name: "Buy Soup"),
  ];

  List<Task> get tasks {
    return [..._tasks];
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTasks() {
    _tasks.removeWhere((task) => task.isDone == true);
    notifyListeners();
  }

  void toogleDone(Task task) {
    task.isDone = !task.isDone;

    notifyListeners();
  }
}

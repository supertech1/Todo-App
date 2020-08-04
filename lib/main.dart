import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/tasks_screen.dart';
import './providers/tasks_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return TaskProvider();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: TasksScreen.id,
        routes: {TasksScreen.id: (context) => TasksScreen()},
      ),
    );
  }
}

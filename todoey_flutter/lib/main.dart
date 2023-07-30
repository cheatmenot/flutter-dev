import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/screens/task_screen.dart';
import 'package:todoey_flutter/model/task_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

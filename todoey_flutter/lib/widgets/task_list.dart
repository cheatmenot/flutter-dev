import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                toggleCheckboxState: (currentCheckboxState) {
                  taskData.updateTask(task);
                },
                onLongPress: () {
                  taskData.deleteTask(task);
                }
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

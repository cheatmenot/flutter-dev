import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function toggleCheckboxState;
  final void Function() onLongPress;

  const TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.toggleCheckboxState,
    required this.onLongPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) => toggleCheckboxState(value),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:habitsbangla/habit1.0/constants/text_styles.dart';
import 'package:habitsbangla/habit1.0/models/task_presets.dart';
import 'package:habitsbangla/habit1.0/ui/task/animated_task.dart';
import 'package:habitsbangla/habit1.0/ui/theming/app_theme.dart';

class TaskWithName extends StatelessWidget {
  final TaskPreset task;
  const TaskWithName({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedTask(
            iconName: task.iconName,
          ),
          const SizedBox(height: 8.0),
          Text(
            task.name.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyles.taskName.copyWith(
              color: AppTheme.of(context).accent,
            ),
          ),
        ],
      ),
    );
  }
}

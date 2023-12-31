import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uikit/theme/main_theme.dart';
import 'package:uikit/widgets/tasks/ready_button.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.taskDeadline,
    required this.taskTitle,
    required this.onChanged,
  }) : compact = false;

  const TaskCard.compact({
    super.key,
    required this.taskDeadline,
    required this.taskTitle,
    required this.onChanged,
  }) : compact = true;

  final String taskTitle;
  final DateTime taskDeadline;
  final void Function(bool) onChanged;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = compact ? context.myTheme.transparent : context.myTheme.white;
    final padding = EdgeInsets.all(compact ? 0 : 12);
    final border = compact
        ? null
        : Border.all(
            color: context.myTheme.black,
            width: 1,
          );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: border,
      ),
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    taskTitle,
                    style: context.textTheme.compactCardTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    DateFormat.yMd('ru').format(taskDeadline),
                    style: context.textTheme.compactCardSubtitle,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            ReadyButton(
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}

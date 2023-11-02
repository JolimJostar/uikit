import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uikit/theme/main_theme.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.date,
    required this.eventTitle,
    required this.eventSubtitle,
  }) : compact = false;

  const EventCard.compact({
    super.key,
    required this.date,
    required this.eventTitle,
    required this.eventSubtitle,
  }) : compact = true;

  final String eventTitle;
  final String eventSubtitle;
  final DateTime date;
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
                    eventTitle,
                    style: context.textTheme.compactCardTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    eventSubtitle,
                    style: context.textTheme.compactCardSubtitle,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Text(DateFormat.yMd('ru').format(date))
          ],
        ),
      ),
    );
  }
}

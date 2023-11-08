import 'package:flutter/material.dart';
import 'dart:math';

import 'package:uikit/theme/main_theme.dart';

class Graph extends StatelessWidget {
  Graph({
    super.key,
    required this.dataList,
    required this.maxWidth,
    this.maxHeight = 162,
  });
  final List<GraphValue> dataList;
  final double maxHeight;
  final double maxWidth;
  late final double maxDataListValue = dataList.map((e) => e.value).reduce(max);

  @override
  Widget build(BuildContext context) {
    final columnWidth = (maxWidth * 0.7) / dataList.length;
    final separatorWidth = (maxWidth * 0.3) / dataList.length;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (constext, index) {
          final currentItem = dataList[index];

          return ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 32, maxHeight: 138),
            child: SizedBox(
              width: columnWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 138 * (currentItem.value / maxDataListValue),
                    width: columnWidth,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: context.myTheme.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      currentItem.title,
                      style: constext.textTheme.graphDataTitle,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 16),
          child: SizedBox(width: separatorWidth),
        ),
      ),
    );
  }
}

class GraphValue {
  final String title;
  final double value;

  GraphValue({
    required this.title,
    required this.value,
  });
}

import 'package:flutter/material.dart';
import 'package:uikit/theme/main_theme.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.child,
    required this.title,
    this.bottomAction,
    this.topAction,
  });
  final Widget child;
  final String title;
  final Widget? bottomAction;
  final Widget? topAction;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          boxShadow: [
            BoxShadow(
              color: context.myTheme.black.withOpacity(0.12),
              blurRadius: 20.0,
              offset: const Offset(0.0, 4.0),
            )
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: context.myTheme.textTheme.cardTitle,
                    ),
                    if (topAction != null) topAction!
                  ],
                ),
                const SizedBox(height: 16),
                child,
                if (bottomAction != null)
                  Column(
                    children: [
                      Divider(
                        height: 0.5,
                        color: context.myTheme.gray,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: bottomAction,
                      )
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

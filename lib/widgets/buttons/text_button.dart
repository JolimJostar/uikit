import 'package:flutter/material.dart';
import 'package:uikit/theme/main_theme.dart';

class KitTextButton extends StatelessWidget {
  const KitTextButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: SizedBox(
        height: 24,
        child: Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            text,
            style: context.textTheme.button.copyWith(
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

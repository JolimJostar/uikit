import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uikit/gen/assets.gen.dart';

class ReadyButton extends StatefulWidget {
  const ReadyButton({
    super.key,
    required this.onChanged,
    this.checked = false,
  });
  final void Function(bool value) onChanged;
  final bool checked;

  @override
  State<ReadyButton> createState() => _ReadyButtonState();
}

class _ReadyButtonState extends State<ReadyButton> {
  late bool checked = widget.checked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!checked);
        setState(() {
          checked = !checked;
        });
      },
      child: SvgPicture.asset(
        checked ? Assets.icons.checked : Assets.icons.unchecked,
        package: 'uikit',
        height: 30,
        width: 30,
      ),
    );
  }
}

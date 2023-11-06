import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uikit/gen/assets.gen.dart';
import 'package:uikit/theme/main_theme.dart';

class KitDropdownButton<T> extends StatefulWidget {
  const KitDropdownButton({
    super.key,
    required this.onChanged,
    required this.values,
    this.hintText,
    this.selectedValue,
  });
  final void Function(T?) onChanged;
  final List<T> values;
  final String? hintText;
  final T? selectedValue;

  @override
  State<KitDropdownButton> createState() => _KitDropdownButtonState<T>();
}

class _KitDropdownButtonState<T> extends State<KitDropdownButton> {
  late T? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        value: selectedValue,
        items: List.generate(
          widget.values.length,
          (index) {
            final value = widget.values[index];

            return DropdownMenuItem<T>(
              value: value,
              child: Text(value.toString()),
            );
          },
        ),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
          widget.onChanged(value);
        },
        hint: widget.hintText != null
            ? Text(
                widget.hintText!,
                style: context.myTheme.textTheme.dropdownButtonText,
              )
            : null,
        style: context.myTheme.textTheme.dropdownButtonText,
        isDense: true,
        menuItemStyleData: const MenuItemStyleData(
          height: 32,
          padding: EdgeInsets.only(
            left: 8,
            top: 4,
            bottom: 4,
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: context.myTheme.black,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        buttonStyleData: ButtonStyleData(
          height: 32,
          padding: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: context.myTheme.black,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        iconStyleData: IconStyleData(
          icon: RotatedBox(
            quarterTurns: 2,
            child: SvgPicture.asset(
              Assets.icons.arrowDropDown,
              package: 'uikit',
              height: 5,
              width: 10,
            ),
          ),
          openMenuIcon: SvgPicture.asset(
            Assets.icons.arrowDropDown,
            package: 'uikit',
            height: 5,
            width: 10,
          ),
          iconSize: 10,
          iconEnabledColor: context.myTheme.black,
        ),
      ),
    );
  }
}

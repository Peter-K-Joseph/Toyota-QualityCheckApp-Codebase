import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/size.dart';

class SummaryButton extends StatelessWidget {
  const SummaryButton({this.title, required this.onPressed, super.key});
  final String? title;
  final dynamic Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: sysWidth,
      child: CustomButtonWidget(
        onPressed: onPressed,
        text: title ?? 'Summary',
        icon: Icon(
          Icons.list,
          color: CustomTheme.of(context).secondaryText,
          size: 15,
        ),
      ),
    );
  }
}

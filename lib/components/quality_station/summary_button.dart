import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/size.dart';

class SummaryButton extends StatelessWidget {
  const SummaryButton({required this.onPressed, super.key});
  final dynamic Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: sysWidth,
      child: CustomButtonWidget(
        onPressed: onPressed,
        text: 'Summary',
        icon: Icon(
          Icons.list,
          color: CustomTheme.of(context).secondaryText,
          size: 15,
        ),
        options: CustomButtonOptions(
          width: 250,
          height: 70,
          color: CustomTheme.of(context).primaryColor,
          textStyle: CustomTheme.of(context).subtitle2.override(
                fontFamily: 'Poppins',
                color: CustomTheme.of(context).secondaryText,
                fontSize: 24,
              ),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

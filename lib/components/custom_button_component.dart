import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:quality_system/constants/size.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.icon,
      this.iconData,
      this.height,
      this.width,
      this.textStyle,
      this.buttonStyle})
      : super(key: key);

  final String text;
  final Widget? icon;
  final IconData? iconData;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? sysWidth,
      child: ElevatedButton.icon(
        icon: icon ??
            FaIcon(
              iconData,
            ),
        label: Text(
          text,
          style: textStyle,
        ),
        onPressed: onPressed,
        style: buttonStyle,
      ),
    );
  }
}

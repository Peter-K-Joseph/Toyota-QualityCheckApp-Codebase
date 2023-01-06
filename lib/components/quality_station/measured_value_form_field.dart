import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/size.dart';

class MeasuredItemFormField extends StatelessWidget {
  const MeasuredItemFormField(
      {Key? key,
      required this.controller,
      required this.controllerString,
      this.height,
      this.width})
      : super(key: key);

  final double? height;
  final double? width;

  final TextEditingController? controller;
  final String controllerString;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: width ?? sysWidth / 4,
        height: height ?? sysHeight * 0.1,
        decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: CustomTheme.of(context).secondaryText,
            width: 3,
          ),
        ),
        child: TextFormField(
          controller: controller,
          onChanged: (_) => EasyDebounce.debounce(
            controllerString,
            const Duration(milliseconds: 700),
            () {},
          ),
          autofocus: true,
          obscureText: false,
          decoration: InputDecoration(
            hintText: '[Enter Value...]',
            hintStyle: CustomTheme.of(context).bodyText2,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
          ),
          style: CustomTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: CustomTheme.of(context).secondaryText,
              ),
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}

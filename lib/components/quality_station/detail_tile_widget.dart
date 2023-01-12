import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/size.dart';

class DetailTileWidget extends StatelessWidget {
  const DetailTileWidget(
      {Key? key, required this.value, this.height, this.width})
      : super(key: key);

  final double? height;
  final double? width;
  final String value;

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
        child: Center(
            child: Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        )),
      ),
    );
  }
}

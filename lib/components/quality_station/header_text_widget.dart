import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/size.dart';

class HeaderTitleWidget extends StatelessWidget {
  const HeaderTitleWidget(
      {Key? key, required this.title, required this.subtitle, this.details})
      : super(key: key);

  final String title;
  final String subtitle;
  final String? details;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: sysHeight * 0.11,
      decoration: const BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: CustomTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  color: CustomTheme.of(context).secondaryText,
                  fontSize: 20,
                ),
          ),
          Text(subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700)),
          details != null ? Text('( $details )') : const SizedBox()
        ],
      ),
    );
  }
}

class BlockFormHeaderComponent extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final Color color;
  const BlockFormHeaderComponent(
      {Key? key,
      this.height,
      this.width,
      required this.color,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? sysWidth * 0.05,
      height: height ?? sysHeight * 0.1,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: CustomTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: CustomTheme.of(context).secondaryText,
                fontSize: 14,
              ),
        ),
      ),
    );
  }
}

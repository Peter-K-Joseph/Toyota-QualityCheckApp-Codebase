import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_theme_component.dart';

AppBar qualityStationAppBar(
    {required BuildContext context,
    required String title,
    required String checksheet}) {
  return AppBar(
    backgroundColor: CustomTheme.of(context).secondaryColor,
    automaticallyImplyLeading: false,
    title: Text(
      title,
      style: CustomTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
    ),
    elevation: 2,
    actions: [
      SizedBox(
        height: 300,
        width: 200,
        child: Center(
          child: Text(
            checksheet,
            style: CustomTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
      )
    ],
  );
}

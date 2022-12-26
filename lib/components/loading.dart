import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quality_system/components/custom_theme_component.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 50,
        height: 50,
        child: SpinKitCircle(
          color: CustomTheme.of(context).primaryColor,
          size: 50,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quality_system/components/background.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/variant/variant_select_card.dart';
import 'package:quality_system/constants/enums.dart';

class VariantSelectScreen extends StatelessWidget {
  VariantSelectScreen({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              const BackgroundSplashImage(),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  VariantSelectCard(
                      image: 'images/variant_images/1.5.gif',
                      variant: EngineVariant.OneHalfLitre.getVariant),
                  VariantSelectCard(
                      image: 'images/variant_images/2liter.png',
                      variant: EngineVariant.TwoLitre.getVariant)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

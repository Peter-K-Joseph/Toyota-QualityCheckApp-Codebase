import 'package:flutter/material.dart';
import 'package:quality_system/components/background_container.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/variant/variant_select_card.dart';
import 'package:quality_system/constants/enums.dart';

class VariantSelectScreen extends StatelessWidget {
  final String systemVariant;
  final String checkSheet;
  VariantSelectScreen(
      {Key? key, required this.systemVariant, required this.checkSheet})
      : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomTheme.of(context).primaryBackground,
      body: BackgroundSplashContainer(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Builder(builder: (context) {
            if (systemVariant == SystemVariant.HeadLine.getVariant) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: VariantSelectCard(
                        system: systemVariant,
                        image: 'images/variant_images/1.5.gif',
                        variant: EngineVariant.OneHalfLitre.getVariant),
                  ),
                  Expanded(
                    child: VariantSelectCard(
                        system: systemVariant,
                        details: 'Conventional',
                        image: 'images/variant_images/2liter.png',
                        variant: EngineVariant.TwoLitre.getVariant),
                  ),
                  Expanded(
                    child: VariantSelectCard(
                        system: systemVariant,
                        details: 'Hybrid',
                        image: 'images/variant_images/2liter.png',
                        variant: EngineVariant.TwoLitre.getVariant),
                  )
                ],
              );
            }
            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                VariantSelectCard(
                    system: systemVariant,
                    image: 'images/variant_images/1.5.gif',
                    variant: EngineVariant.OneHalfLitre.getVariant),
                VariantSelectCard(
                    system: systemVariant,
                    image: 'images/variant_images/2liter.png',
                    variant: EngineVariant.TwoLitre.getVariant)
              ],
            );
          }),
        ),
      ),
    );
  }
}

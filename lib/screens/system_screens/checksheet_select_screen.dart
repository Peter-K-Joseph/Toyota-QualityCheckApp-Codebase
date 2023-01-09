import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/background_container.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/quality_station_choose_card.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/screens/variant_select_screen/variant_select_home_screen.dart';

class CheckSheetChooseScreen extends StatelessWidget {
  CheckSheetChooseScreen({super.key, required this.systemVariant});
  final String systemVariant;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: CustomTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Select Check Sheet',
          style: CustomTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: CustomTheme.of(context).secondaryText,
                fontSize: 22,
              ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: BackgroundSplashContainer(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 50,
                    childAspectRatio: 2,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    QualityStationChooseCard(
                      icon: Icons.filter_1,
                      onPressed: () {
                        Get.to(() => VariantSelectScreen(
                              checkSheet: CheckSheet.Regular.getVariant,
                              systemVariant: systemVariant,
                            ));
                      },
                      title: 'Regular',
                    ),
                    QualityStationChooseCard(
                      icon: Icons.filter_2,
                      onPressed: () {
                        Get.to(() => VariantSelectScreen(
                            checkSheet: CheckSheet.Unique.getVariant,
                            systemVariant: systemVariant));
                      },
                      title: 'Unique',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/background.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/quality_station_choose_card.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/screens/variant_select_screen/variant_select_home_screen.dart';

class SystemChooseScreen extends StatelessWidget {
  SystemChooseScreen({super.key});
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
          'Select System',
          style: CustomTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: CustomTheme.of(context).secondaryText,
                fontSize: 22,
              ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                const BackgroundSplashImage(),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                                    systemVariant:
                                        SystemVariant.HeadLine.getVariant,
                                  ));
                            },
                            title: 'Head Line',
                          ),
                          QualityStationChooseCard(
                            icon: Icons.filter_2,
                            onPressed: () {
                              Get.to(() => VariantSelectScreen(
                                  systemVariant:
                                      SystemVariant.CrankLine.getVariant));
                            },
                            title: 'Crank Line',
                          ),
                          QualityStationChooseCard(
                            icon: Icons.filter_3,
                            onPressed: () {
                              Get.to(() => VariantSelectScreen(
                                  systemVariant:
                                      SystemVariant.BlockLine.getVariant));
                            },
                            title: 'Block Line',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

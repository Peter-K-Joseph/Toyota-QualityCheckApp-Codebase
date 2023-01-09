import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/background_container.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/quality_station_choose_card.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_headline_forms_screens/qs_1_forms_screen.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_headline_forms_screens/qs_2_forms_screen.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_headline_forms_screens/qs_3_forms_screen.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_headline_forms_screens/qs_4_forms_screen.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_headline_forms_screens/qs_5_forms_screen.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_headline_forms_screens/qs_6_forms_screen.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_headline_forms_screens/qs_7_forms_screen.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_headline_forms_screens/qs_8_froms_screen.dart';

class QSHeadLineHomeScreen extends StatelessWidget {
  QSHeadLineHomeScreen({
    Key? key,
    required this.measurername,
    required this.variant,
    required this.shift,
    required this.details,
    required this.processno,
    required this.partserialno,
  }) : super(key: key);

  final String measurername;
  final String variant;
  final String details;
  final String shift;
  final String processno;
  final String partserialno;
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
          'Head LIne QC stations',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                          Get.to(() => QS1HeadLineFormsScreen(
                                measurername: measurername,
                                partserialno: partserialno,
                                processname: processno,
                                shift: shift,
                                variant: variant,
                              ));
                        },
                        title: 'QC Station 1',
                      ),
                      QualityStationChooseCard(
                        icon: Icons.filter_2,
                        onPressed: () {
                          Get.to(() => QS2HeadLineFormsScreen(
                                measurername: measurername,
                                partserialno: partserialno,
                                processname: processno,
                                shift: shift,
                                variant: variant,
                              ));
                        },
                        title: 'QC Station 2',
                      ),
                      QualityStationChooseCard(
                        icon: Icons.filter_3,
                        onPressed: () {
                          Get.to(() => QS3HeadLineFormsScreen(
                                measurername: measurername,
                                partserialno: partserialno,
                                processname: processno,
                                shift: shift,
                                variant: variant,
                              ));
                        },
                        title: 'QC Station 3',
                      ),
                      QualityStationChooseCard(
                        icon: Icons.filter_4,
                        onPressed: () {
                          Get.to(() => QS4HeadLineFormsScreen(
                                measurername: measurername,
                                partserialno: partserialno,
                                processname: processno,
                                shift: shift,
                                variant: variant,
                              ));
                        },
                        title: 'QC Station 4',
                      ),
                      QualityStationChooseCard(
                        icon: Icons.filter_5,
                        onPressed: () {
                          Get.to(() => QS5HeadLineFormsScreen(
                                measurername: measurername,
                                partserialno: partserialno,
                                processname: processno,
                                shift: shift,
                                variant: variant,
                              ));
                        },
                        title: 'QC Station 5',
                      ),
                      QualityStationChooseCard(
                        icon: Icons.filter_3,
                        onPressed: () {
                          Get.to(() => QS6HeadLineFormsScreen(
                                measurername: measurername,
                                partserialno: partserialno,
                                processname: processno,
                                shift: shift,
                                variant: variant,
                              ));
                        },
                        title: 'QC Station 6',
                      ),
                      QualityStationChooseCard(
                        icon: Icons.filter_4,
                        onPressed: () {
                          Get.to(() => QS7HeadLineFormsScreen(
                                measurername: measurername,
                                partserialno: partserialno,
                                processname: processno,
                                shift: shift,
                                variant: variant,
                              ));
                        },
                        title: 'QC Station 7',
                      ),
                      QualityStationChooseCard(
                        icon: Icons.filter_5,
                        onPressed: () {
                          Get.to(() => QS8HeadLineFormsScreen(
                                measurername: measurername,
                                partserialno: partserialno,
                                processname: processno,
                                shift: shift,
                                variant: variant,
                              ));
                        },
                        title: 'QC Station 8',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

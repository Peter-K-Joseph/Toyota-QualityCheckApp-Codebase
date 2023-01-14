import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quality_system/components/background_container.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';
import 'package:quality_system/components/quality_station/measured_value_form_field.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';

class QCHeadLineSummaryScreen extends StatelessWidget {
  QCHeadLineSummaryScreen({
    Key? key,
    this.measurername1,
    this.shift,
    this.processname,
    this.partserialno,
  
    this.variant,
    this.mvremark,
  }) : super(key: key);

  final String? measurername1;
  final String? shift;
  final String? processname;
  final String? partserialno;
  
  final String? variant;
  final String? mvremark;

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
          'SUMMARY - BLOCK QC1',
          style: CustomTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        elevation: 2,
      ),
      body: BackgroundSplashContainer(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: HeaderTitleWidget(
                          title: 'Measurer\'s Name :',
                          subtitle: measurername1 ?? ''),
                    ),
                    Expanded(
                        child: HeaderTitleWidget(
                            title: 'Shift :', subtitle: shift ?? '')),
                    Expanded(
                        child: HeaderTitleWidget(
                            title: 'Variant :', subtitle: variant ?? '')),
                    Expanded(
                      child: HeaderTitleWidget(
                          title: 'Process Name :', subtitle: processname ?? ''),
                    ),
                    Expanded(
                      child: HeaderTitleWidget(
                          title: 'Part Serial No. :',
                          subtitle: partserialno ?? ''),
                    ),
                  ],
                ),
                SizedBox(
                  width: sysWidth,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            width: sysWidth / 8,
                            title: 'Sl.no',
                            color: const Color(0xFF39D2C0)),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: BlockFormHeaderComponent(
                            width: sysWidth / 4,
                            title: 'Measured Items',
                            color: const Color(0xFF39D2C0)),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 4,
                        child: BlockFormHeaderComponent(
                            width: sysWidth / 4,
                            title: 'Measured Value',
                            color: const Color(0xFF39D253)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: sysWidth,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            MeasuredItemTextWidget(text: mvremark),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: sysWidth,
                  child: CustomButtonWidget(
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Success!'),
                            content: const Text('Data Posted'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                      Get.offAll(() => SystemChooseScreen());
                    },
                    text: 'POST',
                    icon: Icon(
                      Icons.local_post_office,
                      color: CustomTheme.of(context).secondaryText,
                      size: 30,
                    ),
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

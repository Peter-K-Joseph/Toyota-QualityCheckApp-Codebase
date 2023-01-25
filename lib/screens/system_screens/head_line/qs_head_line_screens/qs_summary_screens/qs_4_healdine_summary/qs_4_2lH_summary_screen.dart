import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/measured_value_radio_button.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_4_controllers/qs_4_2h_controller.dart';

class QS4HeadLine2LitreHybridSummaryScreen extends StatelessWidget {
  QS4HeadLine2LitreHybridSummaryScreen(
      {Key? key,
      required this.variant,
      required this.shift,
      required this.processname,
      required this.partserialno,
      required this.measurername,
      required this.checkSheet,
      this.details,
      required this.start})
      : super(key: key);

  final String variant;
  final String shift;
  final String processname;
  final String partserialno;
  final String measurername;
  final String checkSheet;
  final String? details;
  final DateTime start;

  final controller = Get.find<HeadLineQS42HController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Head Line - Quality Station 4 Summary',
          style: CustomTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: HeaderTitleWidget(
                        title: 'Measurer\'s Name :',
                        subtitle: measurername,
                      ),
                    ),
                    Expanded(
                        child: HeaderTitleWidget(
                      title: 'Shift :',
                      subtitle: shift,
                    )),
                    Expanded(
                        child: HeaderTitleWidget(
                      title: 'Variant :',
                      subtitle: variant,
                    )),
                    Expanded(
                      child: HeaderTitleWidget(
                        title: 'Process Name :',
                        subtitle: processname,
                      ),
                    ),
                    Expanded(
                      child: HeaderTitleWidget(
                        title: 'Part Serial No. :',
                        subtitle: partserialno,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: sysWidth,
                  height: 120,
                  child: Row(
                    children: [
                      const BlockFormHeaderComponent(
                          height: 120,
                          title: 'Sl.no',
                          color: Color(0xFF39D2C0)),
                      const Expanded(
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            height: 120,
                            title: 'Class',
                            color: Color(0xFF39D2C0)),
                      ),
                      const Expanded(
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            height: 120,
                            title: 'Measured Items',
                            color: Color(0xFF39D2C0)),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const BlockFormHeaderComponent(
                                width: 200,
                                height: 60,
                                title: 'No. of Positions',
                                color: Color(0xFF39D2C0)),
                            Row(
                              children: const [
                                Expanded(
                                  child: BlockFormHeaderComponent(
                                      height: 60,
                                      title: '1.5 L',
                                      color: Color(0xFF39D2C0)),
                                ),
                                Expanded(
                                  child: BlockFormHeaderComponent(
                                      height: 60,
                                      title: '2 L',
                                      color: Color(0xFF39D2C0)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            height: 120,
                            title: 'Gauge No.',
                            color: Color(0xFF39D2C0)),
                      ),
                      const Expanded(
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            height: 120,
                            title: 'Action Point',
                            color: Color(0xFFEEC060)),
                      ),
                      BlockFormHeaderComponent(
                          height: 120,
                          width: sysWidth / 4,
                          title: 'Measured Value',
                          color: const Color(0xFF39D253)),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Form(
                      // key: controller.formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm1 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm2 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm3 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm4 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm5 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm6 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm7 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm8 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm9 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm10 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm11 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm12 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm13 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm14 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm15 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm16 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm17 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm18 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm19 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm20 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm21 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm22 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm23 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm24 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm25 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm26 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm27 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm28 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm29 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm30 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm31 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm32 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm33 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm34 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm35 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm36 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm37 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm38 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm39 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm40 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm41 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm42 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm43 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm44 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm45 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm46 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm47 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm48 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm49 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm50 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm51 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm52 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm53 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm54 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm55 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm56 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm57 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm58 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm59 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm60 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm61 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm62 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm63 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm64 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm65 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm66 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm67 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm68 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm69 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm70 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm71 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm72 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm73 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm74 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm75 = v;
                          }),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {
                            controller.pm76 = v;
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 60,
                  width: sysWidth,
                  child: CustomButtonWidget(
                    onPressed: () {
                      controller.postValues(
                          variant: variant,
                          measurername: measurername,
                          processname: processname,
                          shift: shift,
                          start: start);
                    },
                    text: 'Summary',
                    icon: Icon(
                      Icons.list,
                      color: CustomTheme.of(context).secondaryText,
                      size: 15,
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

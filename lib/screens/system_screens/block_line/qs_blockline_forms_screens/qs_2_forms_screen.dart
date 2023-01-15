import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';
import 'package:quality_system/components/quality_station/measured_value_form_field.dart';
import 'package:quality_system/components/quality_station/measured_value_radio_button.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/controllers/quality_station_forms_controller.dart';
import 'package:quality_system/screens/system_screens/block_line/qs_block_line_screens/qc_summary_screen.dart';

class QS2BlockLineFormsScreen extends StatelessWidget {
  QS2BlockLineFormsScreen({
    Key? key,
    required this.variant,
    required this.shift,
    required this.processname,
    required this.partserialno,
    required this.measurername,
  }) : super(key: key);

  final String variant;
  final String shift;
  final String processname;
  final String partserialno;
  final String measurername;

  final controller = Get.put(QualityStationFormsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        backgroundColor: CustomTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Block Line',
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
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const BlockFormHeaderComponent(
                        title: 'Sl.no', color: Color(0xFF39D2C0)),
                    const Expanded(
                      child: BlockFormHeaderComponent(
                          title: 'Measured Items', color: Color(0xFF39D2C0)),
                    ),
                    const BlockFormHeaderComponent(
                        title: 'Gauge No.', color: Color(0xFF39D2C0)),
                    Expanded(
                      child: BlockFormHeaderComponent(
                          title: 'Acceptance Value',
                          color: CustomTheme.of(context).alternate),
                    ),
                    const Expanded(
                      child: BlockFormHeaderComponent(
                          title: 'Action Point', color: Color(0xFFEEC060)),
                    ),
                    BlockFormHeaderComponent(
                        width: sysWidth / 4,
                        title: 'Measured Value',
                        color: const Color(0xFF39D253)),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // FutureBuilder<ApiCallResponse>(
                    //   future: QcOneLimitDataCall.call(),
                    //   builder: (context, snapshot) {
                    //     // Customize what your widget looks like when it's loading.
                    //     if (!snapshot.hasData) {
                    //       return const LoadingWidget();
                    //     }
                    //     final actionllQcOneLimitDataResponse = snapshot.data!;
                    //     return Builder(
                    //       builder: (context) {
                    //         final qc12lactionll =
                    //             QcOneLimitDataCall.qc12lactionll(
                    //           actionllQcOneLimitDataResponse.jsonBody,
                    //         ).toList();
                    //         return Column(
                    //           mainAxisSize: MainAxisSize.max,
                    //           children: List.generate(qc12lactionll.length,
                    //               (qc12lactionllIndex) {
                    //             final qc12lactionllItem =
                    //                 qc12lactionll[qc12lactionllIndex];
                    //             return Container(
                    //               width: sysWidth * 0.05,
                    //               height: sysHeight * 0.1,
                    //               decoration: BoxDecoration(
                    //                 color: const Color(0xFFEEEEEE),
                    //                 borderRadius: BorderRadius.circular(10),
                    //                 border: Border.all(
                    //                   color:
                    //                       CustomTheme.of(context).secondaryText,
                    //                   width: 3,
                    //                 ),
                    //               ),
                    //               child: Text(
                    //                 getJsonField(
                    //                   qc12lactionllItem,
                    //                   r'''$''',
                    //                 ).toString(),
                    //                 textAlign: TextAlign.center,
                    //                 style: CustomTheme.of(context)
                    //                     .bodyText1
                    //                     .override(
                    //                       fontFamily: 'Poppins',
                    //                       color: CustomTheme.of(context)
                    //                           .secondaryText,
                    //                     ),
                    //               ),
                    //             );
                    //           }),
                    //         );
                    //       },
                    //     );
                    //   },
                    // ),
                    Form(
                      key: controller.formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 60,
                  width: sysWidth,
                  child: CustomButtonWidget(
                    onPressed: () {},
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

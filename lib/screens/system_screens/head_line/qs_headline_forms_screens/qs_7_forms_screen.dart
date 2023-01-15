import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/measured_value_form_field.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/controllers/quality_station_forms_controller.dart';
import 'package:quality_system/screens/system_screens/block_line/qs_block_line_screens/qc_summary_screen.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';

class QS7HeadLineFormsScreen extends StatelessWidget {
  QS7HeadLineFormsScreen({
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
          'Head Line',
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
                    Form(
                      key: controller.formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: const [],
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

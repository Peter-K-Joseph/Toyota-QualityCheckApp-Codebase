import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/measured_value_radio_button.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/controllers/quality_station_forms_controller.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';

class QS3HeadLine1Point5FormsScreen extends StatelessWidget {
  const QS3HeadLine1Point5FormsScreen(
      {Key? key,
      required this.variant,
      required this.shift,
      required this.processname,
      required this.partserialno,
      required this.measurername,
      required this.checkSheet})
      : super(key: key);

  final String variant;
  final String shift;
  final String processname;
  final String partserialno;
  final String measurername;
  final String checkSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: controller.scaffoldKey,
      appBar: AppBar(
        backgroundColor: CustomTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Head Line - Quality Station 3',
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
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
                          MeasuredItemRadioButtonField(callbackvalue: (v) {}),
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
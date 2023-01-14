import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quality_system/components/quality_station/appbar_widget.dart';
import 'package:quality_system/components/quality_station/detail_tile_widget.dart';
import 'package:quality_system/components/quality_station/measured_value_radio_button.dart';
import 'package:quality_system/components/quality_station/summary_button.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_1_controller.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';

class QS1HeadLineSummaryScreen extends StatelessWidget {
  QS1HeadLineSummaryScreen(
      {Key? key,
      required this.variant,
      required this.checkSheet,
      required this.shift,
      required this.processname,
      required this.partserialno,
      required this.measurername,
      this.details})
      : super(key: key);

  final String variant;
  final String shift;
  final String processname;
  final String partserialno;
  final String measurername;
  final String checkSheet;
  final String? details;
  final controller = Get.find<HeadLineQC1Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: controller.scaffoldKey,
      appBar: qualityStationAppBar(
          context: context,
          title: 'Head Line - QC Station 1',
          checksheet: checkSheet),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
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
                    details: details,
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
                        height: 120, title: 'Sl.no', color: Color(0xFF39D2C0)),
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
              SizedBox(
                width: sysWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: sysWidth - sysWidth / 4,
                      child: Obx(() {
                        if (controller.loading.value) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller.values.length,
                            itemBuilder: (ctx, i) {
                              return Row(
                                children: [
                                  DetailTileWidget(
                                      width: 63,
                                      value: controller.values[i].parameterNo
                                          .toString()),
                                  Expanded(
                                    child: DetailTileWidget(
                                        value: 'Class'.toString()),
                                  ),
                                  Expanded(
                                    child: DetailTileWidget(
                                        value: controller.values[i].measuredItem
                                            .toString()),
                                  ),
                                  DetailTileWidget(
                                      width: 90,
                                      value: controller
                                          .values[i].noOfPosition15L
                                          .toString()),
                                  DetailTileWidget(
                                      width: 90,
                                      value: controller
                                          .values[i].noOfPosition20L
                                          .toString()),
                                  Expanded(
                                    child: DetailTileWidget(
                                        value: controller.values[i].gaugeNo
                                            .toString()),
                                  ),
                                  Expanded(
                                    child: DetailTileWidget(
                                        value: controller.values[i].actionPoint
                                            .toString()),
                                  )
                                ],
                              );
                            });
                      }),
                    ),
                    SizedBox(
                      width: sysWidth / 4,
                      child: Form(
                        key: controller.formKey,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm1,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm2,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm3,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm4,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm5,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm6,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm7,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm8,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm9,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm10,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm11,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm12,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm13,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm14,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm15,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm16,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm17,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm18,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm19,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm20,
                            ),
                            MeasuredItemRadioButtonField(
                              assignedValue: controller.pm21,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SummaryButton(
          title: 'Post',
          onPressed: () async {
            await Get.defaultDialog(
                title: 'Uploaded', content: const Text('Succesfully Uploaded'));
            Get.offAll(() => SystemChooseScreen());
          }),
    );
  }
}

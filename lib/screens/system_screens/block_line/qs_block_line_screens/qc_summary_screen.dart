import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quality_system/components/background_container.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';
import 'package:quality_system/components/quality_station/measured_value_form_field.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';

class QCBlockLineSummaryScreen extends StatelessWidget {
  QCBlockLineSummaryScreen({
    Key? key,
    this.measurername1,
    this.shift,
    this.processname,
    this.partserialno,
    this.mv00,
    this.mv01,
    this.mv02,
    this.mv03,
    this.mv04,
    this.mv0501,
    this.mv0502,
    this.mv0503,
    this.mv06,
    this.mv07,
    this.mv08,
    this.mv09,
    this.mv10,
    this.mv11,
    this.mv12,
    this.mv13,
    this.mv14,
    this.mv15,
    this.mv16,
    this.mv17,
    this.mv18,
    this.mv1901,
    this.mv1902,
    this.mv1903,
    this.mv20,
    this.mv21,
    this.mv22,
    this.mv23,
    this.mv24,
    this.variant,
    this.mvremark,
  }) : super(key: key);

  final String? measurername1;
  final String? shift;
  final String? processname;
  final String? partserialno;
  final String? mv00;
  final String? mv01;
  final double? mv02;
  final double? mv03;
  final double? mv04;
  final double? mv0501;
  final double? mv0502;
  final double? mv0503;
  final double? mv06;
  final double? mv07;
  final double? mv08;
  final double? mv09;
  final double? mv10;
  final double? mv11;
  final double? mv12;
  final double? mv13;
  final double? mv14;
  final double? mv15;
  final double? mv16;
  final double? mv17;
  final double? mv18;
  final double? mv1901;
  final double? mv1902;
  final double? mv1903;
  final double? mv20;
  final double? mv21;
  final double? mv22;
  final double? mv23;
  final double? mv24;
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
                      // Flexible(
                      //   fit: FlexFit.tight,
                      //   flex: 3,
                      //   child: FutureBuilder<ApiCallResponse>(
                      //     future: QcOneLimitDataCall.call(),
                      //     builder: (context, snapshot) {
                      //       // Customize what your widget looks like when it's loading.
                      //       if (!snapshot.hasData) {
                      //         return const LoadingWidget();
                      //       }
                      //       final measureditemQcOneLimitDataResponse =
                      //           snapshot.data!;
                      //       return Builder(
                      //         builder: (context) {
                      //           final qc12lmeasureditem =
                      //               QcOneLimitDataCall.qc12lmeasureditem(
                      //             measureditemQcOneLimitDataResponse.jsonBody,
                      //           ).toList();
                      //           return Column(
                      //             mainAxisSize: MainAxisSize.max,
                      //             mainAxisAlignment:
                      //                 MainAxisAlignment.spaceEvenly,
                      //             children:
                      //                 List.generate(qc12lmeasureditem.length,
                      //                     (qc12lmeasureditemIndex) {
                      //               final qc12lmeasureditemItem =
                      //                   qc12lmeasureditem[
                      //                       qc12lmeasureditemIndex];
                      //               return Container(
                      //                 width: sysWidth * 0.2,
                      //                 height: sysHeight * 0.08,
                      //                 decoration: BoxDecoration(
                      //                   color: const Color(0xFFEEEEEE),
                      //                   borderRadius: BorderRadius.circular(10),
                      //                   border: Border.all(
                      //                     color: CustomTheme.of(context)
                      //                         .secondaryText,
                      //                     width: 3,
                      //                   ),
                      //                 ),
                      //                 child: Text(
                      //                   getJsonField(
                      //                     qc12lmeasureditemItem,
                      //                     r'''$''',
                      //                   ).toString(),
                      //                   textAlign: TextAlign.center,
                      //                   style: CustomTheme.of(context)
                      //                       .bodyText1
                      //                       .override(
                      //                         fontFamily: 'Poppins',
                      //                         color: CustomTheme.of(context)
                      //                             .secondaryText,
                      //                       ),
                      //                 ),
                      //               );
                      //             }),
                      //           );
                      //         },
                      //       );
                      //     },
                      //   ),
                      // ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MeasuredItemTextWidget(text: mv00),
                            MeasuredItemTextWidget(text: mv01),
                            MeasuredItemTextWidget(text: mv02.toString()),
                            MeasuredItemTextWidget(text: mv03.toString()),
                            MeasuredItemTextWidget(text: mv04.toString()),
                            Row(
                              children: [
                                MeasuredItemTextWidget(
                                    width: sysWidth / 12,
                                    text: mv0501.toString()),
                                MeasuredItemTextWidget(
                                    width: sysWidth / 12,
                                    text: mv0502.toString()),
                                MeasuredItemTextWidget(
                                    width: sysWidth / 12,
                                    text: mv0503.toString()),
                              ],
                            ),
                            MeasuredItemTextWidget(text: mv06.toString()),
                            MeasuredItemTextWidget(text: mv07.toString()),
                            MeasuredItemTextWidget(text: mv08.toString()),
                            MeasuredItemTextWidget(text: mv09.toString()),
                            MeasuredItemTextWidget(text: mv10.toString()),
                            MeasuredItemTextWidget(text: mv11.toString()),
                            MeasuredItemTextWidget(text: mv12.toString()),
                            MeasuredItemTextWidget(text: mv13.toString()),
                            MeasuredItemTextWidget(text: mv14.toString()),
                            MeasuredItemTextWidget(text: mv15.toString()),
                            MeasuredItemTextWidget(text: mv16.toString()),
                            MeasuredItemTextWidget(text: mv17.toString()),
                            MeasuredItemTextWidget(text: mv18.toString()),
                            Row(
                              children: [
                                MeasuredItemTextWidget(
                                    width: sysWidth / 12,
                                    text: mv1901.toString()),
                                MeasuredItemTextWidget(
                                    width: sysWidth / 12,
                                    text: mv1902.toString()),
                                MeasuredItemTextWidget(
                                    width: sysWidth / 12,
                                    text: mv1903.toString()),
                              ],
                            ),
                            MeasuredItemTextWidget(text: mv20.toString()),
                            MeasuredItemTextWidget(text: mv21.toString()),
                            MeasuredItemTextWidget(text: mv22.toString()),
                            MeasuredItemTextWidget(text: mv23.toString()),
                            MeasuredItemTextWidget(text: mv24.toString()),
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
                        //await TclqcOneTwoCall.call(
                        //   measurerName: measurername1,
                        //   shift: shift,
                        //   modelName: variant,
                        //   processName: processname,
                        //   partSerialName: partserialno,
                        //   serialNumberMarkingCondition: mv00,
                        //   machiningSurface: mv01,
                        //   circularityFrRrCenterHole: mv02?.toString(),
                        //   positionFrCenterDatumHole: mv03?.toString(),
                        //   positionRrCenterDatumHole: mv04?.toString(),
                        //   diaFrAxis1: mv0501?.toString(),
                        //   diaFrAxis2: mv0502?.toString(),
                        //   diaFrAxis3: mv0503?.toString(),
                        //   diaFrAxisGroove: mv06?.toString(),
                        //   j5ReliefGrooveDia: mv07?.toString(),
                        //   rearFlangeWidth: mv08?.toString(),
                        //   flyWheelSeatingGrooveOd: mv09?.toString(),
                        //   flyWheelSeatingOd: mv10?.toString(),
                        //   j1EndFacePosition20l: mv11?.toString(),
                        //   j1RrEndFacePosition20: mv12?.toString(),
                        //   j1Od: mv13?.toString(),
                        //   rearFlaneDia: mv14?.toString(),
                        //   datumReferencePlanePositionK5: mv15?.toString(),
                        //   frontFaceCenterHoleDatumDiaToPartDatumDistance:
                        //       mv16?.toString(),
                        //   rearFaceCenterHoleDatumDiaToPartDatumDistance:
                        //       mv17?.toString(),
                        //   frEndFaceToFwFittingFaceLength: mv18?.toString(),
                        //   frontShaftRunoutK31: mv1901?.toString(),
                        //   frontShaftRunoutK32: mv1902?.toString(),
                        //   frontShaftRunoutK33: mv1903?.toString(),
                        //   journal1OuterDiameterRunoutK3: mv20?.toString(),
                        //   rrAxisRunoutK3: mv21?.toString(),
                        //   rrFlangeOuterDiameterRunoutK4: mv22?.toString(),
                        //   rearFlangeFaceRunoutK6: mv23?.toString(),
                        //   j5OdRunoutK2: mv24?.toString(),
                        //   remarksqc120l: mvremark,
                        // );
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
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

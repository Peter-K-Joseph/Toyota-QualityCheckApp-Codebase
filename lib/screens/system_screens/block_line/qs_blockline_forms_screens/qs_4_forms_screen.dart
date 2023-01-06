import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/backend/api_requests/api_calls.dart';
import 'package:quality_system/components/backend/api_request.dart';
import 'package:quality_system/components/background.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/loading.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';
import 'package:quality_system/components/quality_station/measured_value_form_field.dart';
import 'package:quality_system/components/quality_station/measured_value_radio_button.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/controllers/quality_station_forms_controller.dart';
import 'package:quality_system/screens/system_screens/block_line/qs_block_line_screens/qc_summary_screen.dart';

class QS4BlockLineFormsScreen extends StatelessWidget {
  QS4BlockLineFormsScreen({
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
          child: Stack(
            children: [
              const BackgroundSplashImage(),
              SingleChildScrollView(
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
                              title: 'Measured Items',
                              color: Color(0xFF39D2C0)),
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
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final qcsparameternoQcOneLimitDataResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12l1csparameterno =
                                    QcOneLimitDataCall.qc12lqcsparameterno(
                                  qcsparameternoQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children:
                                      List.generate(qc12l1csparameterno.length,
                                          (qc12l1csparameternoIndex) {
                                    final qc12l1csparameternoItem =
                                        qc12l1csparameterno[
                                            qc12l1csparameternoIndex];
                                    return Container(
                                      width: sysWidth * 0.044,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12l1csparameternoItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final measureditemQcOneLimitDataResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12lmeasureditem =
                                    QcOneLimitDataCall.qc12lmeasureditem(
                                  measureditemQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children:
                                      List.generate(qc12lmeasureditem.length,
                                          (qc12lmeasureditemIndex) {
                                    final qc12lmeasureditemItem =
                                        qc12lmeasureditem[
                                            qc12lmeasureditemIndex];
                                    return Container(
                                      width: sysWidth * 0.2,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12lmeasureditemItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final methodQcOneLimitDataResponse = snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12lgaugeno =
                                    QcOneLimitDataCall.qc12lgaugeno(
                                  methodQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(qc12lgaugeno.length,
                                      (qc12lgaugenoIndex) {
                                    final qc12lgaugenoItem =
                                        qc12lgaugeno[qc12lgaugenoIndex];
                                    return Container(
                                      width: sysWidth * 0.06,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12lgaugenoItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final symbolQcOneLimitDataResponse = snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12lsymbol =
                                    QcOneLimitDataCall.qc12lsymbol(
                                  symbolQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(qc12lsymbol.length,
                                      (qc12lsymbolIndex) {
                                    final qc12lsymbolItem =
                                        qc12lsymbol[qc12lsymbolIndex];
                                    return Container(
                                      width: sysWidth * 0.06,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12lsymbolItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final accStandardQcOneLimitDataResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12laccstd =
                                    QcOneLimitDataCall.qc12laccstd(
                                  accStandardQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(qc12laccstd.length,
                                      (qc12laccstdIndex) {
                                    final qc12laccstdItem =
                                        qc12laccstd[qc12laccstdIndex];
                                    return Container(
                                      width: sysWidth * 0.07,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12laccstdItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final acculQcOneLimitDataResponse = snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12laccul =
                                    QcOneLimitDataCall.qc12laccul(
                                  acculQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(qc12laccul.length,
                                      (qc12lacculIndex) {
                                    final qc12lacculItem =
                                        qc12laccul[qc12lacculIndex];
                                    return Container(
                                      width: sysWidth * 0.05,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12lacculItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final accllQcOneLimitDataResponse = snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12laccll =
                                    QcOneLimitDataCall.qcc12laccll(
                                  accllQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(qc12laccll.length,
                                      (qc12laccllIndex) {
                                    final qc12laccllItem =
                                        qc12laccll[qc12laccllIndex];
                                    return Container(
                                      width: sysWidth * 0.05,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12laccllItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final actionstdQcOneLimitDataResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12lactionstd =
                                    QcOneLimitDataCall.qc12lactionstd(
                                  actionstdQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(qc12lactionstd.length,
                                      (qc12lactionstdIndex) {
                                    final qc12lactionstdItem =
                                        qc12lactionstd[qc12lactionstdIndex];
                                    return Container(
                                      width: sysWidth * 0.07,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12lactionstdItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final actionulQcOneLimitDataResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12lactionul =
                                    QcOneLimitDataCall.qc12lactionul(
                                  actionulQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(qc12lactionul.length,
                                      (qc12lactionulIndex) {
                                    final qc12lactionulItem =
                                        qc12lactionul[qc12lactionulIndex];
                                    return Container(
                                      width: sysWidth * 0.05,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12lactionulItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: QcOneLimitDataCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const LoadingWidget();
                            }
                            final actionllQcOneLimitDataResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final qc12lactionll =
                                    QcOneLimitDataCall.qc12lactionll(
                                  actionllQcOneLimitDataResponse.jsonBody,
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(qc12lactionll.length,
                                      (qc12lactionllIndex) {
                                    final qc12lactionllItem =
                                        qc12lactionll[qc12lactionllIndex];
                                    return Container(
                                      width: sysWidth * 0.05,
                                      height: sysHeight * 0.1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEEEEE),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: CustomTheme.of(context)
                                              .secondaryText,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        getJsonField(
                                          qc12lactionllItem,
                                          r'''$''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: CustomTheme.of(context)
                                                  .secondaryText,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                        Form(
                          key: controller.formKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              MeasuredItemFormField(
                                  controller: controller.mv00Controller,
                                  controllerString: 'mv00Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv01Controller,
                                  controllerString: 'mv01Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv02Controller,
                                  controllerString: 'mv02Controller'),
                              MeasuredItemRadioButtonField(onChangedNg: () {
                                controller.test =
                                    MeasuredItemCheck.NOTGOOD.getCheck;
                              }, onChangedCr: () {
                                controller.test =
                                    MeasuredItemCheck.CRITICAL.getCheck;
                              }, onChangedOk: () {
                                controller.test = MeasuredItemCheck.OK.getCheck;
                              }),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MeasuredItemFormField(
                                      width: sysWidth / 12,
                                      controller: controller.mv0501Controller,
                                      controllerString: 'mv0501Controller'),
                                  MeasuredItemFormField(
                                      width: sysWidth / 12,
                                      controller: controller.mv0502Controller,
                                      controllerString: 'mv0502Controller'),
                                  MeasuredItemFormField(
                                      width: sysWidth / 12,
                                      controller: controller.mv0503Controller,
                                      controllerString: 'mv0503Controller'),
                                ],
                              ),
                              MeasuredItemFormField(
                                  controller: controller.mv06Controller,
                                  controllerString: 'mv06Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv07Controller,
                                  controllerString: 'mv07Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv08Controller,
                                  controllerString: 'mv08Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv09Controller,
                                  controllerString: 'mv09Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv10Controller,
                                  controllerString: 'mv10Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv11Controller,
                                  controllerString: 'mv11Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv12Controller,
                                  controllerString: 'mv12Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv13Controller,
                                  controllerString: 'mv13Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv14Controller,
                                  controllerString: 'mv14Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv15Controller,
                                  controllerString: 'mv15Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv16Controller,
                                  controllerString: 'mv16Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv17Controller,
                                  controllerString: 'mv17Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv18Controller,
                                  controllerString: 'mv18Controller'),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MeasuredItemFormField(
                                      width: sysWidth / 12,
                                      controller: controller.mv1901Controller,
                                      controllerString: 'mv1901Controller'),
                                  MeasuredItemFormField(
                                      width: sysWidth / 12,
                                      controller: controller.mv1902Controller,
                                      controllerString: 'mv1902Controller'),
                                  MeasuredItemFormField(
                                      width: sysWidth / 12,
                                      controller: controller.mv1903Controller,
                                      controllerString: 'mv1903Controller'),
                                ],
                              ),
                              MeasuredItemFormField(
                                  controller: controller.mv20Controller,
                                  controllerString: 'mv20Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv21Controller,
                                  controllerString: 'mv21Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv22Controller,
                                  controllerString: 'mv22Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv23Controller,
                                  controllerString: 'mv23Controller'),
                              MeasuredItemFormField(
                                  controller: controller.mv24Controller1,
                                  controllerString: 'mv24Controller1'),
                              MeasuredItemFormField(
                                  controller: controller.mv24Controller2,
                                  controllerString: 'mv24Controller2'),
                              MeasuredItemFormField(
                                  controller: controller.mv25rController,
                                  controllerString: 'mv25rController'),
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
                          // if (controller.formKey.currentState == null ||
                          //     !controller.formKey.currentState!.validate()) {
                          //   return;
                          // }

                          Get.to(() => QCBlockLineSummaryScreen(
                                measurername1: measurername,
                                shift: shift,
                                processname: processname,
                                partserialno: partserialno,
                                mv01: controller.mv01Controller!.text,
                                mv02: double.tryParse(
                                    controller.mv02Controller!.text),
                                mv03: double.tryParse(
                                    controller.mv03Controller!.text),
                                mv04: double.tryParse(
                                    controller.mv04Controller!.text),
                                mv0501: double.tryParse(
                                    controller.mv0501Controller!.text),
                                mv0502: double.tryParse(
                                    controller.mv0502Controller!.text),
                                mv0503: double.tryParse(
                                    controller.mv0503Controller!.text),
                                mv06: double.tryParse(
                                    controller.mv06Controller!.text),
                                mv00: controller.mv00Controller!.text,
                                mv07: double.tryParse(
                                    controller.mv07Controller!.text),
                                mv08: double.tryParse(
                                    controller.mv08Controller!.text),
                                mv09: double.tryParse(
                                    controller.mv09Controller!.text),
                                mv10: double.tryParse(
                                    controller.mv10Controller!.text),
                                mv11: double.tryParse(
                                    controller.mv11Controller!.text),
                                mv12: double.tryParse(
                                    controller.mv12Controller!.text),
                                mv13: double.tryParse(
                                    controller.mv13Controller!.text),
                                mv14: double.tryParse(
                                    controller.mv14Controller!.text),
                                mv15: double.tryParse(
                                    controller.mv15Controller!.text),
                                mv16: double.tryParse(
                                    controller.mv16Controller!.text),
                                mv17: double.tryParse(
                                    controller.mv17Controller!.text),
                                mv18: double.tryParse(
                                    controller.mv18Controller!.text),
                                mv1901: double.tryParse(
                                    controller.mv1901Controller!.text),
                                mv1902: double.tryParse(
                                    controller.mv1902Controller!.text),
                                mv1903: double.tryParse(
                                    controller.mv1903Controller!.text),
                                mv20: double.tryParse(
                                    controller.mv20Controller!.text),
                                mv21: double.tryParse(
                                    controller.mv21Controller!.text),
                                mv22: double.tryParse(
                                    controller.mv22Controller!.text),
                                mv23: double.tryParse(
                                    controller.mv23Controller!.text),
                                mv24: double.tryParse(
                                    controller.mv24Controller2!.text),
                                variant: variant,
                                mvremark: controller.mv25rController!.text,
                              ));
                        },
                        text: 'Summary',
                        icon: Icon(
                          Icons.list,
                          color: CustomTheme.of(context).secondaryText,
                          size: 15,
                        ),
                        options: CustomButtonOptions(
                          width: 250,
                          height: 70,
                          color: CustomTheme.of(context).primaryColor,
                          textStyle: CustomTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: CustomTheme.of(context).secondaryText,
                                fontSize: 24,
                              ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/background_container.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/inspection/inspection_detail_card.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/controllers/associate_controller.dart';
import 'package:quality_system/screens/system_screens/block_line/qs_block_line_screens/qs_home_screen.dart';
import 'package:quality_system/screens/system_screens/crank_line/qs_crank_line_screens/qs_home_screen.dart';
import 'package:quality_system/screens/system_screens/head_line/qs_head_line_screens/qs_home_screen.dart';

class VariantAssociateDetailScreen extends StatelessWidget {
  final String variant;
  final String? details;
  final String system;
  final String checkSheet;
  VariantAssociateDetailScreen(
      {Key? key,
      required this.variant,
      this.details,
      required this.system,
      required this.checkSheet})
      : super(key: key);
  final associateController = Get.put(AssociateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: associateController.scaffoldKey,
      backgroundColor: CustomTheme.of(context).secondaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Inspection  Details',
          style: CustomTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                fontSize: 22,
              ),
        ),
        elevation: 0,
      ),
      body: BackgroundSplashContainer(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Form(
              key: associateController.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 40),
                    child: Column(
                      children: [
                        InspectionDetailBox(
                          title: 'Shift',
                          boxType: InspectionDetailBoxType.Dropdown,
                          options: [
                            Shift.Blue.getShift,
                            Shift.White.getShift,
                            Shift.Yellow.getShift
                          ],
                          onChanged: (val) {
                            associateController.shiftValue = val!;
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        InspectionDetailBox(
                          title: 'Process Name',
                          boxType: InspectionDetailBoxType.Dropdown,
                          options: [
                            ProcessName.P1.getProcessName,
                            ProcessName.P2.getProcessName,
                            ProcessName.P3.getProcessName,
                            ProcessName.P4.getProcessName,
                            ProcessName.P5.getProcessName,
                            ProcessName.P6.getProcessName,
                          ],
                          onChanged: (val) {
                            associateController.processnameValue = val!;
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        InspectionDetailBox(
                          title: 'Part Serial No.',
                          boxType: InspectionDetailBoxType.Text,
                          controller:
                              associateController.partserialnoController,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        InspectionDetailBox(
                          title: 'Measurer\'s Name',
                          boxType: InspectionDetailBoxType.Text,
                          controller:
                              associateController.measurernameController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 75,
          width: sysWidth,
          child: ElevatedButton.icon(
            onPressed: () async {
              if (!associateController.formKey.currentState!.validate()) {
                return;
              }

              if (associateController.shiftValue == '') {
                Get.rawSnackbar(message: 'Shift Value cannot be empty');
                return;
              }
              if (associateController.processnameValue == '') {
                Get.rawSnackbar(message: 'Process Name Value cannot be empty');
                return;
              }
              if (system == SystemVariant.BlockLine.getVariant) {
                Get.to(() => QSBlockLineHomeScreen(
                      measurername:
                          associateController.measurernameController.text,
                      partserialno:
                          associateController.partserialnoController.text,
                      processno: associateController.processnameValue,
                      shift: associateController.shiftValue,
                      variant: variant,
                    ));
              } else if (system == SystemVariant.CrankLine.getVariant) {
                Get.to(() => QSCrankLineHomeScreen(
                      measurername:
                          associateController.measurernameController.text,
                      partserialno:
                          associateController.partserialnoController.text,
                      processno: associateController.processnameValue,
                      shift: associateController.shiftValue,
                      variant: variant,
                    ));
              } else if (system == SystemVariant.HeadLine.getVariant) {
                Get.to(() => QSHeadLineHomeScreen(
                      start: DateTime.now(),
                      details: details,
                      measurername:
                          associateController.measurernameController.text,
                      partserialno:
                          associateController.partserialnoController.text,
                      processno: associateController.processnameValue,
                      shift: associateController.shiftValue,
                      variant: variant,
                      checkSheet: checkSheet,
                    ));
              }
            },
            label: const Text(
              'Next',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            icon: Icon(
              Icons.navigate_next,
              color: CustomTheme.of(context).primaryBackground,
              size: 38,
            ),
          )),
    );
  }
}

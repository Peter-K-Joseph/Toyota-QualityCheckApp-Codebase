import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/background.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/inspection/inspection_detail_card.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/controllers/associate_controller.dart';
import 'package:quality_system/screens/quality_station_screens/quality_station_home.dart';

class VariantAssociateDetailScreen extends StatelessWidget {
  final String variant;
  VariantAssociateDetailScreen({Key? key, required this.variant})
      : super(key: key);
  final associateController = Get.put(AssociateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: associateController.scaffoldKey,
      backgroundColor: CustomTheme.of(context).primaryBackground,
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                const BackgroundSplashImage(),
                SingleChildScrollView(
                  child: Form(
                    key: associateController.formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 50, 20, 40),
                          child: Column(
                            children: [
                              InspectionDetailBox(
                                title: 'Shift',
                                boxType: InspectionDetailBoxType.Dropdown,
                                options: const ['Yellow Shift', 'White Shift'],
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
                                options: const [
                                  'Process 1',
                                  'Process 2',
                                  'Process 3',
                                  'Process 4',
                                  'Process 5',
                                  'Process 6'
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 75,
          width: sysWidth,
          child: ElevatedButton.icon(
            onPressed: () async {
              // if (!associateController.formKey.currentState!.validate()) {
              //   return;
              // }

              // if (associateController.shiftValue == '') {
              //   return;
              // }
              // if (associateController.processnameValue == '') {
              //   return;
              // }

              Get.to(() => QualityStationChooseScreen(
                    measurername:
                        associateController.measurernameController.text,
                    partserialno:
                        associateController.partserialnoController.text,
                    processno: associateController.processnameValue,
                    shift: associateController.shiftValue,
                    variant: variant,
                  ));
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

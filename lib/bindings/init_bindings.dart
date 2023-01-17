import 'package:get/get.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_1_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_2_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_3_controllers/qs_3_1.5_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_3_controllers/qs_3_2H_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_3_controllers/qs_3_2c_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_4_controllers/qs_4_1.5_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_4_controllers/qs_4_2c_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_4_controllers/qs_4_2h_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_5_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_6_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_7_controllers/qs_7_1.5_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_7_controllers/qs_7_2c_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_7_controllers/qs_7_2h_controller.dart';

class AppInitialBindings implements Bindings {
  @override
  void dependencies() {
    // HeadLine
    // Station 1
    Get.lazyPut<HeadLineQC1Controller>(() => HeadLineQC1Controller(),
        fenix: true);
    // Station 2
    Get.lazyPut<HeadLineQC2Controller>(() => HeadLineQC2Controller(),
        fenix: true);
    // Station 3
    Get.lazyPut<HeadLineQS31Point5Controller>(
        () => HeadLineQS31Point5Controller(),
        fenix: true);
    Get.lazyPut<HeadLineQS32CController>(() => HeadLineQS32CController(),
        fenix: true);
    Get.lazyPut<HeadLineQS32HController>(() => HeadLineQS32HController(),
        fenix: true);
    // Station 4
    Get.lazyPut<HeadLineQS41Point5Controller>(
        () => HeadLineQS41Point5Controller(),
        fenix: true);
    Get.lazyPut<HeadLineQS42CController>(() => HeadLineQS42CController(),
        fenix: true);
    Get.lazyPut<HeadLineQS42HController>(() => HeadLineQS42HController(),
        fenix: true);
    // Station 5
    Get.lazyPut<HeadLineQC5Controller>(() => HeadLineQC5Controller(),
        fenix: true);
    // Station 6
    Get.lazyPut<HeadLineQC6Controller>(() => HeadLineQC6Controller(),
        fenix: true);
    // Station 7
    Get.lazyPut<HeadLineQS71Point5Controller>(
        () => HeadLineQS71Point5Controller(),
        fenix: true);
    Get.lazyPut<HeadLineQS72CController>(() => HeadLineQS72CController(),
        fenix: true);
    Get.lazyPut<HeadLineQS72HController>(() => HeadLineQS72HController(),
        fenix: true);
  }
}

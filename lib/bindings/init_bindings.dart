import 'package:get/get.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_1_controller.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_2_controller.dart';

class AppInitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeadLineQC1Controller>(() => HeadLineQC1Controller(),
        fenix: true);
    Get.lazyPut<HeadLineQC2Controller>(() => HeadLineQC2Controller(),
        fenix: true);
  }
}

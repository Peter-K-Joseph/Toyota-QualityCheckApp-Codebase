import 'package:get/get.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_1_controller.dart';

class AppInitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeadLineQC1Controller>(() => HeadLineQC1Controller(),
        fenix: true);
  }
}

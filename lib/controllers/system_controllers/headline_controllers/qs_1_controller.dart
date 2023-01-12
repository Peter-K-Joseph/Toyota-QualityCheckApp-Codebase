import 'dart:convert';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc1.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQC1Controller extends GetxController {
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC1>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    try {
      loading(true);
      final result =
          await httpServices.getRequest(endpoint: 'api/v1/qc1/headline');

      final data = jsonDecode(result.body) as List;

      for (var element in data) {
        values.add(HeadLineQC1.fromJson(element));
      }
      loading(false);
    } catch (e) {
      print(e);
      loading(false);
    }
  }

  @override
  void onReady() {
    getValues();
    super.onReady();
  }
}

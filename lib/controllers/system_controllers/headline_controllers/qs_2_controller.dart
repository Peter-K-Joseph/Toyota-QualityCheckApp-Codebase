import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQC2Controller extends GetxController {
  String? pm1;
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;
  final formKey = GlobalKey<FormState>();

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result =
          await httpServices.getRequest(endpoint: 'api/v1/qc2/headline');

      final data = jsonDecode(result.body) as List;

      for (var element in data) {
        values.add(HeadLineQC.fromJson(element));
      }
      loading(false);
    } catch (e) {
      print(e);
      loading(false);
    }
  }

  Future<void> postValues(
      {required String variant,
      required String measurername,
      required String processname,
      required String shift,
      required DateTime start}) async {
    String? endpont;

    try {
      loading(true);
      if (variant == EngineVariant.OneHalfLitre.getVariant) {
        endpont = "api/v1/qc2/headline/1.5L";
      } else if (variant == EngineVariant.TwoLitreC.getVariant) {
        endpont = "api/v1/qc2/headline/2.0L/Conventional";
      } else if (variant == EngineVariant.TwoLitreH.getVariant) {
        endpont = "api/v1/qc2/headline/2.0L/Hybrid";
      }
      final result = await httpServices.postRequest(endpoint: endpont!, data: {
        "process_name": processname,
        "measurer_name": measurername,
        "shift": shift,
        "model_name": variant,
        "time": {
          "start": start.toIso8601String(),
          "end": DateTime.now().toIso8601String()
        },
        "Bottom surface Overall part Appearance": pm1
      });

      print(result.body);
      print(result.statusCode);
      if (result.statusCode == 200) {
        await Get.defaultDialog(
            title: 'Uploaded', content: const Text('Succesfully Uploaded'));
        Get.offAll(() => SystemChooseScreen());
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

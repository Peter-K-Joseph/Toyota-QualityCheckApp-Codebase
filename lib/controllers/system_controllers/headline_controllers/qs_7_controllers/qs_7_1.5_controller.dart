import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQS71Point5Controller extends GetxController {
  int? pm1;
  int? pm2;
  int? pm5;
  int? pm6;
  int? pm7;
  int? pm8;
  int? pm9;

  final formKey = GlobalKey<FormState>();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result = await httpServices.getRequest(
          endpoint: 'api/v1/qc7/headline?engine_type=1_5L');

      final data = jsonDecode(result.body) as List;
      print(data);
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
    String? endpont = "api/v1/qc7/headline/1.5L";

    try {
      loading(true);

      final result = await httpServices.postRequest(endpoint: endpont, data: {
        "process_name": processname,
        "measurer_name": measurername,
        "shift": shift,
        "model_name": variant,
        "time": {"start": start.toIso8601String()},
        "Water jacket plug tight press fitting surface": pm1,
        "Ball press fitting surface": pm2,
        "Front fcae, Ball press fitting depth": pm5,
        "Rear face, ball press in depth": pm6,
        "Front face, Plug tight press fitting depth": pm7,
        "Top face, screw plug/ inspection torque": pm8,
        "Sealant application surface of water jacket plug tight hole": pm9
      });
      if (result.statusCode == 201) {
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

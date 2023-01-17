import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQS72CController extends GetxController {
  String? pm1;
  String? pm2;
  String? pm3;
  String? pm4;
  String? pm5;
  String? pm6;
  String? pm7;
  String? pm8;
  String? pm9;

  final formKey = GlobalKey<FormState>();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result = await httpServices.getRequest(
          endpoint: 'api/v1/qc7/headline?engine_type=2_0L_C');

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

  @override
  void onReady() {
    getValues();
    super.onReady();
  }
}

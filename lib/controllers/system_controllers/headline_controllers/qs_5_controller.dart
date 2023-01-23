import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQC5Controller extends GetxController {
  int? pm1;
  int? pm2;
  int? pm3;
  int? pm4;
  String? pm5;
  String? pm6;
  String? pm7;
  int? pm8;
  int? pm9;
  int? pm10;
  int? pm11;
  int? pm12;
  int? pm13;

  final formKey = GlobalKey<FormState>();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result =
          await httpServices.getRequest(endpoint: 'api/v1/qc5/headline');

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
        endpont = "api/v1/qc5/headline/1.5L";
      } else if (variant == EngineVariant.TwoLitreC.getVariant) {
        endpont = "api/v1/qc5/headline/2.0L/Conventional";
      } else if (variant == EngineVariant.TwoLitreH.getVariant) {
        endpont = "api/v1/qc5/headline/2.0L/Hybrid";
      }
      final result = await httpServices.postRequest(endpoint: endpont!, data: {
        "process_name": processname,
        "measurer_name": measurername,
        "shift": shift,
        "model_name": variant,
        "time": {"start": start.toIso8601String()},
        "INT/EXH Valve stem guide press fitting surface": pm1,
        "INT/EXH Valve stem guide surface": pm2,
        " EXH Valve seat press fitting surface": pm3,
        "EXH Valve seat surface": pm4,
        "Top face, INT valve guide press fit height": pm5,
        "Top face, EXH valve guide press fit height": pm6,
        "EXH valve seat press fit gap": pm7,
        "Main O/H hole burr remainder": pm8,
        "HLA hole burr remainder": pm9,
        "HLA Air vent holes ": pm10,
        "HLA hole surface": pm11,
        "Cam journal lubrication hole": pm12,
        "Ball press fitting hole surface in main oil hole": pm13,
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

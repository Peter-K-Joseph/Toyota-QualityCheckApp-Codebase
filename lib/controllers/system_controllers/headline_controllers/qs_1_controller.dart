import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQC1Controller extends GetxController {
  int? pm1;
  int? pm2;
  int? pm3;
  int? pm4;
  int? pm5;
  int? pm6;
  int? pm7;
  int? pm8;
  int? pm9;
  int? pm10;
  int? pm11;
  int? pm12;
  int? pm13;
  int? pm14;
  int? pm15;
  int? pm16;
  int? pm17;
  int? pm18;
  int? pm19;
  int? pm20;
  int? pm21;

  final formKey = GlobalKey<FormState>();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result =
          await httpServices.getRequest(endpoint: 'api/v1/qc1/headline');

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
        endpont = "api/v1/qc1/headline/1.5L";
      } else if (variant == EngineVariant.TwoLitreC.getVariant) {
        endpont = "api/v1/qc1/headline/2.0L/Conventional";
      } else if (variant == EngineVariant.TwoLitreH.getVariant) {
        endpont = "api/v1/qc1/headline/2.0L/Hybrid";
      }
      final result = await httpServices.postRequest(endpoint: endpont!, data: {
        "process_name": processname,
        "measurer_name": measurername,
        "shift": shift,
        "model_name": variant,
        "time": {"start": start.toIso8601String()},
        "Top surface Milling surface condition": pm1,
        "Top surface processing knock holes": pm2,
        "Top cam housing assembly hole": pm3,
        "Top face clamp holes": pm4,
        "Top face clamp hole diameter": pm5,
        "Top face clamp hole depth": pm6,
        "Top face cam housing assembly hole depth diameter": pm7,
        "Top face cam housing assembly hole depth": pm8,
        "Top face- Machining kcock hole pre drill diameter": pm9,
        "Top face- Machining kcock hole pre drill depth": pm10,
        "Top face machining knock hole diameter": pm11,
        "Top face machining knock hole depth": pm12,
        "EX surface Milling surface condition": pm13,
        "EX surface QR Code &amp; part number Engraving condition": pm14,
        "Bottom surface Milling surface condition": pm15,
        "Bottom side clamp holes": pm16,
        "Laser clad groove milling": pm17,
        "Laser clad groove washed state": pm18,
        "Bottom clamp hole diameter": pm19,
        "Bottom clamp hole depth": pm20,
        "Bottom face INT. laser cladding hole diameter": pm21
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

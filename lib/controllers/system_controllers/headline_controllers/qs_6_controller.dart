import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQC6Controller extends GetxController {
  int? pm1;
  int? pm2;
  int? pm3;
  int? pm4;
  int? pm5;
  int? pm6;
  int? pm7;
  String? pm8;
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

  final formKey = GlobalKey<FormState>();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result =
          await httpServices.getRequest(endpoint: 'api/v1/qc6/headline');

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
        endpont = "api/v1/qc6/headline/1.5L";
      } else if (variant == EngineVariant.TwoLitreC.getVariant) {
        endpont = "api/v1/qc6/headline/2.0L/Conventional";
      } else if (variant == EngineVariant.TwoLitreH.getVariant) {
        endpont = "api/v1/qc6/headline/2.0L/Hybrid";
      }
      final result = await httpServices.postRequest(endpoint: endpont!, data: {
        "process_name": processname,
        "measurer_name": measurername,
        "shift": shift,
        "model_name": variant,
        "time": {"start": start.toIso8601String()},
        "Raw material / Machining surface": pm1,
        "Inside Cam case": pm2,
        "Thread / Location hole": pm3,
        "Top face cleanliness\n(Tape peeling load)": pm4,
        "Front face cleanliness\n(Tape peeling load)": pm5,
        "Oil holes, Plug hole": pm6,
        "Bottom surface": pm7,
        "Bottom face Roughness": pm8,
        "EXH side, Valve seat surface": pm9,
        "EXH side, Stem guide hole surface": pm10,
        "INT side, Valve seat surface": pm11,
        "INT side, Stem guide hole surface": pm12,
        "Bottom face, EXH valve guide hole diameter": {
          "999P": pm13,
          "104EP": pm15
        },
        "Bottom face, INT valve guide hole diameter": {
          "999P": pm14,
          "104EP": pm18
        },
        "Bottom face, EXH valve guide hole Roundness": pm16,
        "Bottom face, EXH valve guide hole Straightness": pm17
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

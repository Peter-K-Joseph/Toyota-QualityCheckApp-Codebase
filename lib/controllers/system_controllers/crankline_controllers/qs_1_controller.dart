import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/services/http_services.dart';

class BlockLineQC1Controller extends GetxController {
  String? pm1;
  String? pm2;
  String? pm3;
  String? pm4;
  String? pm5;
  String? pm6;
  String? pm7;
  String? pm8;
  String? pm9;
  String? pm10;
  String? pm11;
  String? pm12;
  String? pm13;
  String? pm14;
  String? pm15;
  String? pm16;
  String? pm17;
  String? pm18;
  String? pm19;
  String? pm20;
  String? pm21;

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
      required String shift}) async {
    late String endpont;
    if (variant == EngineVariant.OneHalfLitre.getVariant) {
      endpont = "api/v1/qc1/headline/1.5L";
    } else if (variant == EngineVariant.TwoLitreC.getVariant) {
      endpont = "api/v1/qc1/headline/2.0L/Conventional";
    } else if (variant == EngineVariant.TwoLitreH.getVariant) {
      endpont = "api/v1/qc1/headline/2.0L/Hybrid";
    }
    try {
      loading(true);

      final result =
          await httpServices.postRequest(endpoint: endpont, data: {});

      print(result.body);
      print(result.statusCode);
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

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQS42CController extends GetxController {
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
  String? pm22;
  String? pm23;
  String? pm24;
  String? pm25;
  String? pm26;
  String? pm27;
  String? pm28;
  String? pm29;
  String? pm30;
  String? pm31;
  String? pm32;
  String? pm33;
  String? pm34;
  String? pm35;
  String? pm36;
  String? pm37;
  String? pm38;
  String? pm39;
  String? pm40;
  String? pm41;
  String? pm42;
  String? pm43;
  String? pm44;
  String? pm45;
  String? pm46;
  String? pm47;
  String? pm48;
  String? pm49;
  String? pm50;
  String? pm51;
  String? pm52;
  String? pm53;
  String? pm54;
  String? pm55;
  String? pm56;
  String? pm57;
  String? pm58;
  String? pm59;
  String? pm60;
  String? pm61;
  String? pm62;
  String? pm63;
  String? pm64;
  String? pm65;
  String? pm66;
  String? pm67;
  String? pm68;
  String? pm69;
  String? pm70;
  String? pm71;
  String? pm72;
  String? pm73;
  String? pm74;
  String? pm75;
  String? pm76;

  final formKey = GlobalKey<FormState>();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result = await httpServices.getRequest(
          endpoint: 'api/v1/qc4/headline?engine_type=2_0L_C');

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

  @override
  void onReady() {
    getValues();
    super.onReady();
  }
}

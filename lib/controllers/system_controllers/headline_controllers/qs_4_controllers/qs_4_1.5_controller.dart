import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQS41Point5Controller extends GetxController {
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
  int? pm22;
  int? pm23;
  int? pm24;
  int? pm25;
  int? pm26;
  int? pm27;
  int? pm28;
  int? pm29;
  int? pm30;
  int? pm31;
  int? pm32;
  int? pm33;
  int? pm34;
  int? pm35;
  int? pm36;
  int? pm37;
  int? pm38;
  int? pm39;
  int? pm40;
  int? pm41;
  int? pm42;
  int? pm43;
  int? pm44;
  int? pm45;
  int? pm46;
  int? pm47;
  int? pm48;
  int? pm49;
  int? pm50;
  int? pm51;
  int? pm52;
  int? pm53;
  int? pm54;
  int? pm55;
  int? pm56;
  int? pm57;
  int? pm58;
  int? pm59;
  int? pm60;
  int? pm61;
  int? pm62;
  int? pm63;
  int? pm64;
  int? pm65;
  int? pm66;
  int? pm67;
  int? pm68;
  int? pm69;
  int? pm70;
  int? pm71;
  int? pm72;
  int? pm73;
  int? pm74;
  int? pm75;
  int? pm76;

  final formKey = GlobalKey<FormState>();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result = await httpServices.getRequest(
          endpoint: 'api/v1/qc4/headline?engine_type=1_5L');

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

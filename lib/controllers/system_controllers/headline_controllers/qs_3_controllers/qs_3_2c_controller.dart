import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQS32CController extends GetxController {
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
  String? pm77;
  String? pm78;
  String? pm79;
  String? pm80;
  String? pm81;
  String? pm82;
  String? pm83;
  String? pm84;
  String? pm85;
  String? pm86;
  String? pm87;
  String? pm88;
  String? pm89;
  String? pm90;
  String? pm91;
  String? pm92;
  String? pm93;
  String? pm94;
  String? pm95;
  String? pm96;
  String? pm97;
  String? pm98;
  String? pm99;
  String? pm100;
  String? pm101;
  String? pm102;
  String? pm103;
  String? pm104;
  String? pm105;
  String? pm106;
  String? pm107;
  String? pm108;
  String? pm109;
  String? pm110;
  String? pm111;
  String? pm112;
  String? pm113;
  String? pm114;
  String? pm115;
  String? pm116;
  String? pm117;
  String? pm118;
  String? pm119;
  String? pm120;
  String? pm121;
  String? pm122;
  String? pm123;
  String? pm124;
  String? pm125;
  String? pm126;
  String? pm127;
  String? pm128;
  String? pm129;
  String? pm130;
  String? pm131;
  String? pm132;
  String? pm133;
  String? pm134;
  String? pm135;
  String? pm136;
  String? pm137;
  String? pm138;
  String? pm139;
  String? pm140;
  String? pm141;
  String? pm142;
  String? pm143;
  String? pm144;
  String? pm145;
  String? pm146;
  String? pm147;
  String? pm148;
  String? pm149;
  String? pm150;
  String? pm151;
  String? pm152;
  String? pm153;
  String? pm154;
  String? pm155;
  String? pm156;
  String? pm157;
  String? pm158;
  String? pm159;
  String? pm160;
  String? pm161;
  String? pm162;
  String? pm163;

  final formKey = GlobalKey<FormState>();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result = await httpServices.getRequest(
          endpoint: 'api/v1/qc3/headline?engine_type=2_0L_C');

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

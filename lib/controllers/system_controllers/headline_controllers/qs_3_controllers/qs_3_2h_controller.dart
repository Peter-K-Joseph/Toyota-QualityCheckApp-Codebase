import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQS32HController extends GetxController {
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
  int? pm77;
  int? pm78;
  int? pm79;
  int? pm80;
  int? pm81;
  int? pm82;
  int? pm83;
  int? pm84;
  int? pm85;
  int? pm86;
  int? pm87;
  int? pm88;
  int? pm89;
  int? pm90;
  int? pm91;
  int? pm92;
  int? pm93;
  int? pm94;
  int? pm95;
  int? pm96;
  int? pm97;
  int? pm98;
  int? pm99;
  int? pm100;
  int? pm101;
  int? pm102;
  int? pm103;
  int? pm104;
  int? pm105;
  int? pm106;
  int? pm107;
  int? pm108;
  int? pm109;
  int? pm110;
  int? pm111;
  int? pm112;
  int? pm113;
  int? pm114;
  int? pm115;
  int? pm116;
  int? pm117;
  int? pm118;
  int? pm119;
  int? pm120;
  int? pm121;
  int? pm122;
  int? pm123;
  int? pm124;
  int? pm125;
  int? pm126;
  int? pm127;
  int? pm128;
  int? pm131;
  int? pm132;
  int? pm133;
  int? pm134;
  int? pm135;
  int? pm136;
  int? pm137;
  int? pm138;
  int? pm139;
  int? pm140;
  int? pm147;
  int? pm148;
  int? pm149;
  int? pm150;
  int? pm151;
  int? pm152;
  int? pm153;
  int? pm154;
  int? pm155;
  int? pm156;
  int? pm157;
  int? pm158;
  int? pm159;
  int? pm160;
  int? pm162;
  int? pm163;
  int? pm165;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey();
  Rx<bool> loading = false.obs;
  final values = <HeadLineQC>[].obs;

  HTTPServices httpServices = HTTPServices();

  Future<void> getValues() async {
    values.clear();
    try {
      loading(true);
      final result = await httpServices.getRequest(
          endpoint: 'api/v1/qc3/headline?engine_type=2_0L_H');

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

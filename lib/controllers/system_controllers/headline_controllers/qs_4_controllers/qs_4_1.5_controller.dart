import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/services/http_services.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';

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

  Future<void> postValues(
      {required String variant,
      required String measurername,
      required String processname,
      required String shift,
      required DateTime start}) async {
    String? endpont = "api/v1/qc4/headline/1.5L";

    try {
      loading(true);

      final result = await httpServices.postRequest(endpoint: endpont, data: {
        "process_name": processname,
        "measurer_name": measurername,
        "shift": shift,
        "model_name": variant,
        "time": {'start': start.toIso8601String()},
        "Top face/ washing condition  visual check  ": pm1,
        "Cam housing assembley montoing screw hole": pm2,
        "VVT oil supply hole ": pm3,
        "Spark plug hole ": pm4,
        "Spark plug tube press fit hole ": pm5,
        "IN/EX HLA hole ": pm6,
        "IN/EX spring seat ": pm7,
        "IN/EX valve guide press fitting hole ": pm8,
        "Oil lavel guage hole ": pm9,
        "PCV press fit hole ": pm10,
        "INT manifold surface &  mounting screw hole ": pm11,
        "Front visual check surface ": pm12,
        "rear visual check surface": pm13,
        "INT & EX surface  ": pm14,
        "Water outlet hole ": pm15,
        "Bottom face visual check ": pm16,
        "EX valve seat bush relief ": pm17,
        "EX valve seat press fitting hole ": pm18,
        "INT laser clad bank(mound) cutting ": pm19,
        "IN/EX valve press fitting hole ": pm20,
        "Spark plug mounting thread hole ": pm21,
        "Top face, spark plug mounting  hole size": pm22,
        "Top face, spark plug mounting  hole depth ": pm23,
        "Bottom face, EXH valve seat press fit C-bore diameter": pm24,
        "Bottom face, INT valve guide press fit hole diameter": {
          '82P': pm25,
          '81EP': pm34
        },
        "Bottom face, EXH valve guide press fit hole diameter": pm26,
        "Bottom face, EXH valve seat escape milling hole diameter": pm27,
        "EXH manifold face, Water outlet hole chamfer diameter": pm29,
        "EXH manifold face, Water outlet hole diameter": pm30,
        "EXH manifold face, Water outlet hole depth": pm31,
        "EX manifold face water outlet tapped hole size ": pm32,
        "EX manifold face water outlet tapped hole depth ": pm33,
        "Bottom face, INT valve guide press fit hole roundness ": pm35,
        "Bottom face, EX valve guide press fit hole diameter ": pm36,
        "Bottom face, EX valve guide press fit hole roundeness ": pm37,
        "Bottom face, Valve seat press fit bore diameter": pm38,
        "Bottom face, EXH valve seat Roundness": pm39,
        "INT Manifold mounting hole size": pm40,
        "INT Manifold mounting hole depth": pm41,
        "INT manifold face, Oil level gaugeguide hole penetration check": pm42,
        "INT manifold face, Oil level gauge guide hole diameter": pm43,
        "INT manifold face, Oil level gauge guide hole depth": pm44,
        "INT manifold face, PCV press fit hole diameter": {
          '87PS': pm45,
          '86MLF': pm69
        },
        "INT manifold face, PCV press fit hole depth": pm46,
        "Top face, INT valve spring seat depth": pm47,
        "Top face, EXH valve spring seat depth": pm48,
        "Top face, INT valve spring seat outer diameter": pm49,
        "Top face, EXH valve spring seat outer diameter": pm50,
        "Top face, INT valve spring seat inner diameter": pm51,
        "Top face, EXH valve spring seat inner diameter": pm52,
        "Top face, Cam housing mounting hole size": pm53,
        "Top face, Cam housing mounting hole depth": pm54,
        "Top face, HLA hole diameter (EXH side)(9 mm or more from the bottom)":
            {'91PS': pm55, '90EP': pm61},
        "Top face, HLA hole depth(EXH side)": pm56,
        "Top face, HLA hole diameter (EXH side)(Within 9 mm from the bottom)": {
          '91PS': pm57,
          '90EP': pm63
        },
        "Top face, HLA hole diameter(INT side)(9 mm or more from the bottom)": {
          '91PS': pm58,
          '90EP': pm65
        },
        "Top face, HLA hole depth (INT side)": pm59,
        "Top face, HLA hole diameter(INT side)(Within 9 mm from the bottom)": {
          '91PS': pm60,
          '90EP': pm67
        },
        "Top face, HLA hole Roundness (EXH side)(9 mm or more from the bottom)":
            pm62,
        "Top face, HLA hole Roundness(EXH side)(Within 9 mm from the bottom)":
            pm64,
        "Top face, HLA hole Roundness(INT side)(9 mm or more from the bottom)":
            pm66,
        "Top face, HLA hole Roundness(INT side)(Within 9 mm from the bottom)":
            pm68,
        "INT manifold face, PCV press fit hole Roundness": pm70,
        "Top face, spark plug hole diameter": pm71,
        "Top face, spark plug hole depth": pm72,
        "Top face, spark plug hole counter bore diameter": pm73,
        "Top face, spark plug hole counter bore depth": pm74,
        "Top face. Spark plug tube press fit hole diameter": pm75,
        "Top face. Spark plug tube press fit hole depth": pm76
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

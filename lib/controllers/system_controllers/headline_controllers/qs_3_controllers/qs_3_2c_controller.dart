import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/models/systems/headline/headlineqc.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';
import 'package:quality_system/services/http_services.dart';

class HeadLineQS32CController extends GetxController {
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
  int? pm18;
  int? pm19;
  int? pm20;
  int? pm21;
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
  int? pm101;
  int? pm102;
  int? pm103;
  int? pm104;
  int? pm105;
  int? pm106;
  int? pm107;
  int? pm108;
  int? pm109;
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
  int? pm131;
  int? pm132;
  int? pm133;
  int? pm134;
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
  int? pm163;

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

  Future<void> postValues(
      {required String variant,
      required String measurername,
      required String processname,
      required String shift,
      required DateTime start}) async {
    String? endpont = "api/v1/qc3/headline/2.0L/Conventional";

    try {
      loading(true);

      final result = await httpServices.postRequest(endpoint: endpont, data: {
        "process_name": processname,
        "measurer_name": measurername,
        "shift": shift,
        "model_name": variant,
        "time": {'start': start.toIso8601String()},
        "Top, Milling surface condition": pm1,
        "Top, knock hole surface condition": pm2,
        "Top, cam housing assy knock  hole surface condition": pm3,
        "Cam housing mounting pilot holes": pm4,
        "Top , VVT lubrication hole": pm5,
        "Top, Cam journal oil supply holes": pm6,
        "Top, IN/EX head bolt seat surface": pm7,
        "Top, Water plug mounting holes": pm8,
        "Rear surface processed status": pm9,
        "Rear EGR valve screw holes": pm10,
        "Rear main oil hole holes": pm11,
        "Rear ball press-fit holes": pm12,
        "Rear water outlet screw holes": pm13,
        "Rear water outlet hole": pm14,
        "IN surface milling surface": pm15,
        "IN Manifold mounting knock hole": pm18,
        "IN manifold mounting holes": pm19,
        "Injector holes (port injection)": pm20,
        "Fuel delivery pipe Hole/Screw hole upper surface": pm21,
        "Front, side Each processed surface state": pm24,
        "Front, main oil hole holes": pm25,
        "Front, ball press-fit holes": pm26,
        "Front, chain tensioner oiling hole": pm27,
        "Front, water plug hole φ20": pm28,
        "Front, chain tensioner screw hole": pm29,
        "Front, chain cover  holes": pm30,
        "Front, ENG mount bracket holes": pm31,
        "EX surface Each processed condition": pm32,
        "EX side water outlet screw holes": pm33,
        "EX side EGR valve holes": pm34,
        "EX side EX manifold holes": pm35,
        "EX side ENG hanger holes": pm36,
        "EX side water outlet hole": pm37,
        "Bottom surface knock holes": pm38,
        "Bottom surface assembly knock holes": pm39,
        "Bottom head bolt hole φ11": pm40,
        "Bottom head bolt hole φ12": pm41,
        "Bottom oil level gauge guide": pm42,
        "Bottom PCV hole": pm43,
        "Botttom, Oil drain holes": pm44,
        "Bottom, laser clad side holes": pm45,
        "Bottom, spark plug holes": pm46,
        "Bottom face, machining knock hole diameter": pm48,
        "Bottom face, machining knock hole depth": pm49,
        "Bottom face, Block assembly knock hole diameter": pm50,
        "Bottom face, Block assembly knock hole deapth": pm51,
        "Bottom face, head bolt hole diameter": pm52,
        "Bottom face, head bolt hole depth (penetration)": pm53,
        "Bottom head bolt hole diameter": pm54,
        "Bottom head bolt hole depth": pm55,
        "Bottom face, oil level gauge guide hole depth": pm56,
        "Bottom face, PCV hole penetration check": pm57,
        "Bottom face spark plug mounting pilot hole diameter": pm58,
        "Bottom, spark plug hole, Measure depth": pm59,
        "Bottom in laser clad milling chmf blue contact": pm63,
        "Front face chain tensioner mounting pilot hole diameter": pm64,
        "EXH manifold face water outlet mounting pilot hole diameter": pm65,
        "EXH manifold face water outlet mounting pilot hole depth": pm66,
        "Rear face water outlet mounting pilot hole diameter": pm67,
        "Rear face water outlet mounting pilot hole depth": pm68,
        "EXH manifold face, water outlet Mounting hole size": pm69,
        "EXH manifold face, water outlet Mounting hole depth": pm70,
        "Rear face water-outlet mounting tapped hole depth": pm71,
        "Front face chain tensioner mounting pilot hole depth": pm72,
        "EXH manifold face, water outlet pipe mounting tapped hole size": pm73,
        "Rear face water-outlet mounting tapped hole size": pm74,
        "EXH manifold face, EXH manifold mounting hole diameter": {
          '35PS_1': pm76,
          '35PS_2': pm80
        },
        "Rear face EGR valve mounting pilot hole diameter": pm77,
        "EXH manifold face, EXH manifold mounting hole depth": {
          '35PS_1': pm78,
          '35PS_2': pm84
        },
        "EXH manifold face, EGR pipe mounting pilot hole depth": pm79,
        "Rear face EGR valve mounting pilot hole depth": pm81,
        "Rear face EGR valve mounting hole size": pm82,
        "Rear face EGR valve mounting hole depth": pm83,
        "EXH manifold face EGR pipe Mounting screw diameter": pm85,
        "EXH manifold mounting hole depth": pm86,
        "ExH manifold face ENG hanger mounting hole depth ": pm87,
        "ExH manifold face ENG hanger mounting hole diameter ": pm88,
        "EXH manifold face ENG hanger mounting hole size": pm89,
        "EXH manifold face ENG hanger mounting hole depth": pm90,
        "Front face Eng hanger mounting hole size": pm91,
        "Front face Eng hanger mounting hole depth": pm92,
        "Rear face water-outlet hole depth": pm93,
        "INT manifold face, D4 fuel delivery pipe mounting pilot hole dia":
            pm101,
        "INT manifold face, D4 fuel delivery pipe mounting pilot hole Depth":
            pm102,
        "INT manifold face,D4 fuel supply pipe mounting counter bore dia":
            pm103,
        "INT manifold face,D4 fuel supply pipe mounting counter bore  depth":
            pm104,
        "INT manifold face, fuel delivery pipe mounting hole size & depth":
            pm105,
        "INT Manifold mounting knock hole diameter": pm106,
        "INT Manifold mounting knock hole depth": pm107,
        "INT Manifold mounting pilot hole diameter": pm108,
        "INT Manifold mounting pilot hole depth": pm109,
        "INT manifold face, Injector hole counter bore diameter": pm115,
        "INT manifold face, Injector hole injector port counterbore diameter":
            pm116,
        "INT manifold face, Injector hole diameter": pm117,
        "INT manifold face, fuel delivery pipe mounting pilot hole diameter":
            pm118,
        "Inner surface of fuel drill pipe mounting screw hole pilot hole depth":
            pm119,
        "INT manifold face, fuel delivery pipe mounting counter bore diameter":
            pm120,
        "INT manifold face, fuel delivery pipe mounting counter bore depth":
            pm121,
        "Inner side of fuel drill pipe mounting screw depth": pm122,
        "FR face, ball press-fit hole diameter": pm123,
        "FR face, ball press-fitting hole depth": pm124,
        "Rear face, ball press-fit hole diameter": pm125,
        "Rear face, ball press-fitting hole depth": pm126,
        "Front face, chain tensioner supply hole penetration check": pm131,
        "Front face, water plug press fit pilot hole diameter": pm132,
        "Front face, water plug press fit pilot hole depth": pm133,
        "Front face, water plug press fit hole diameter": {
          '28P': 'pm134',
          '27MLF': 'pm157'
        },
        "Top face machining & cam housing assembly knock holes diameter": pm147,
        "Top face machining & cam housing assembly knock holes depth": pm148,
        "Top face, cam housing mounting pre drill hole diameter": pm149,
        "Top side cam housing mounting pre drill hole depth": pm150,
        "Top face, VVT lubrication hole depth (Penetration check)": pm151,
        "Top face, Cam journal lubrication hole penetration check": pm152,
        "Top face, water plug hole diameter": pm153,
        "Top face, water plug (M14) hole counterbore diameter": pm154,
        "Top face, water plug hole thread diameter": pm155,
        "Top face, INT/ EXH head bolt seat diameter": pm156,
        "Front water plug press-fit hole roundness": pm158,
        "Top face INT, Exh head bolt seating": pm159,
        "Top face, Machining knock hole pitch": pm160,
        "Bottom face, Machining knock hole pitch": pm163
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

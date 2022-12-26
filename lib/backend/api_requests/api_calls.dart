import 'dart:convert';

import 'package:quality_system/components/backend/api_request.dart';
import 'api_manager.dart';
export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TclqcTwoOnePointFiveCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? machinedSurfacepinJournalOd = '',
    String? oilHoleChamferAreaAppearance = '',
    String? oilHolesAppearance = '',
    String? cleanlinessMachiningSurface = '',
    String? cleanlinessOilHoles = '',
    String? journalOuterDiameter25 = '',
    String? journal24Width = '',
    String? allPinOuterDiameter = '',
    String? allPinWidth = '',
    String? pinWidth13CounterWeightSideFace15l = '',
    String? journalOilHoleChamferDiameter = '',
    String? pinOilHoleChamferDiameter = '',
    String? journalOilHoleChamferWidth = '',
    String? pinOilHoleChamferWidth = '',
    String? pin1OilHoleDepthLength = '',
    String? pinOilHoleDepthLength = '',
    String? pin1EndFaceRrFlangeEndFacePosition = '',
    String? journal2EndFaceRrFlangeEndFacePosition = '',
    String? pin2EndFacePositionRrFlangeEndFacePosition = '',
    String? journal3EndFaceRrFlangeEndFacePosition = '',
    String? pin3EndFaceRrFlangeEndFacePosition = '',
    String? journal4EndFaceRrFlangeEndFacePosition = '',
    String? pinPositionDegree = '',
    String? journal2OuterDiameterRunout = '',
    String? journal3jOuterDiameterRunout = '',
    String? journal4jOuterDiameterRunout = '',
    String? remarksqc215l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"machined_surfacepin_journal_od":"$machinedSurfacepinJournalOd",
"oil_hole_chamfer_area_appearance":"$oilHoleChamferAreaAppearance",
"oil_holes_appearance":"$oilHolesAppearance",
"cleanliness_machining_surface":"$cleanlinessMachiningSurface",
"cleanliness_oil_holes":"$cleanlinessOilHoles",
"journal_outer_diameter_2_5":"$journalOuterDiameter25",
"journal_2_4_width":"$journal24Width",
"all_pin_outer_diameter":"$allPinOuterDiameter",
"all_pin_width":"$allPinWidth",
"pin_width_1_3_counter_weight_side_face_1_5l":"$pinWidth13CounterWeightSideFace15l",
"journal_oil_hole_chamfer_diameter":"$journalOilHoleChamferDiameter",
"pin_oil_hole_chamfer_diameter":"$pinOilHoleChamferDiameter",
"journal_oil_hole_chamfer_width":"$journalOilHoleChamferWidth",
"pin_oil_hole_chamfer_width":"$pinOilHoleChamferWidth",
"pin_1_oil_hole_depth_length":"$pin1OilHoleDepthLength",
"pin_oil_hole_depth_length":"$pinOilHoleDepthLength",
"pin_1_end_face_rr_flange_end_face_position":"$pin1EndFaceRrFlangeEndFacePosition",
"journal_2_end_face_rr_flange_end_face_position":"$journal2EndFaceRrFlangeEndFacePosition",
"pin_2_end_face_position_rr_flange_end_face_position":"$pin2EndFacePositionRrFlangeEndFacePosition",
"journal_3_end_face_rr_flange_end_face_position":"$journal3EndFaceRrFlangeEndFacePosition",
"pin_3_end_face_rr_flange_end_face_position":"$pin3EndFaceRrFlangeEndFacePosition",
"journal_4_end_face_rr_flange_end_face_position":"$journal4EndFaceRrFlangeEndFacePosition",
"pin_position_degree":"$pinPositionDegree",
"journal_2_outer_diameter_runout":"$journal2OuterDiameterRunout",
"journal_3j_outer_diameter_runout":"$journal3jOuterDiameterRunout",
"journal_4j_outer_diameter_runout":"$journal4jOuterDiameterRunout",
"remarksqc2_1_5l":"$remarksqc215l"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcTwoOnePointFive',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_2_1_5l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcTwoTwoLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? machinedSurfacePinJournalOd = '',
    String? oilHoleChamferAreaAppearance = '',
    String? oilHolesAppearance = '',
    String? cleanlinessMachiningSurface = '',
    String? cleanlinessOilHoles = '',
    String? journalOuterDiameter25 = '',
    String? journal24Width = '',
    String? journal3Width = '',
    String? allPinOuterDiameter = '',
    String? allPinWidth = '',
    String? journalOilHoleChamferDiameter = '',
    String? pinOilHoleChamferDiameter = '',
    String? journalOilHoleChamferPosition = '',
    String? pinOilHoleChamferPosition = '',
    String? oil24JHoleDepthLength = '',
    String? pin1EndFaceRrFlangeEndFacePosition = '',
    String? journal2EndFaceRrFlangeEndFacePosition = '',
    String? pin2EndFacePositionRrFlangeEndFacePosition = '',
    String? journal3EndFaceRrFlangeEndFacePosition = '',
    String? pin3EndFaceRrFlangeEndFacePosition = '',
    String? journal4EndFaceRrFlangeEndFacePosition = '',
    String? pin4EndFaceRrFlangeEndFacePosition = '',
    String? journal5EndFaceRrFlangeEndFacePosition = '',
    String? pinPositionDegreeK2 = '',
    String? journal2OuterDiameterRunoutK2 = '',
    String? journal3jOuterDiameterRunoutK2 = '',
    String? journal4jOuterDiameterRunoutK2 = '',
    String? journal5jOuterDiameterRunoutK2 = '',
    String? remarksqc220l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"process_name":"$processName",
"model_name": "$modelName",
"shift":"$shift",
"part_serial_name":"$partSerialName",
"machined_surface_pin_journal_od":"$machinedSurfacePinJournalOd",
"oil_hole_chamfer_area_appearance":"$oilHoleChamferAreaAppearance",
"oil_holes_appearance":"$oilHolesAppearance",
"cleanliness_machining_surface":"$cleanlinessMachiningSurface",
"cleanliness_oil_holes":"$cleanlinessOilHoles",
"journal_outer_diameter_2_5":"$journalOuterDiameter25",
"journal_2_4_width":"$journal24Width",
"journal_3_width":"$journal3Width",
"all_pin_outer_diameter":"$allPinOuterDiameter",
"all_pin_width":"$allPinWidth",
"journal_oil_hole_chamfer_diameter":"$journalOilHoleChamferDiameter",
"pin_oil_hole_chamfer_diameter":"$pinOilHoleChamferDiameter",
"journal_oil_hole_chamfer_position":"$journalOilHoleChamferPosition",
"pin_oil_hole_chamfer_position":"$pinOilHoleChamferPosition",
"oil_2_4_j_hole_depth_length":"$oil24JHoleDepthLength",
"pin_1_end_face_rr_flange_end_face_position":"$pin1EndFaceRrFlangeEndFacePosition",
"journal_2_end_face_rr_flange_end_face_position":"$journal2EndFaceRrFlangeEndFacePosition",
"pin_2_end_face_position_rr_flange_end_face_position":"$pin2EndFacePositionRrFlangeEndFacePosition",
"journal_3_end_face_rr_flange_end_face_position":"$journal3EndFaceRrFlangeEndFacePosition",
"pin_3_end_face_rr_flange_end_face_position":"$pin3EndFaceRrFlangeEndFacePosition",
"journal_4_end_face_rr_flange_end_face_position":"$journal4EndFaceRrFlangeEndFacePosition",
"pin_4_end_face_rr_flange_end_face_position":"$pin4EndFaceRrFlangeEndFacePosition",
"journal_5_end_face_rr_flange_end_face_position":"$journal5EndFaceRrFlangeEndFacePosition",
"pin_position_degree_k2":"$pinPositionDegreeK2",
"journal_2_outer_diameter_runout_k2":"$journal2OuterDiameterRunoutK2",
"journal_3j_outer_diameter_runout_k2":"$journal3jOuterDiameterRunoutK2",
"journal_4j_outer_diameter_runout_k2":"$journal4jOuterDiameterRunoutK2",
"journal_5j_outer_diameter_runout_k2":"$journal5jOuterDiameterRunoutK2",
"remarksqc2_2_0l":"$remarksqc220l"

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcTwoTwoLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_2_2l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcOneTwoCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? serialNumberMarkingCondition = '',
    String? machiningSurface = '',
    String? circularityFrRrCenterHole = '',
    String? positionFrCenterDatumHole = '',
    String? positionRrCenterDatumHole = '',
    String? diaFrAxis1 = '',
    String? diaFrAxisGroove = '',
    String? j5ReliefGrooveDia = '',
    String? rearFlangeWidth = '',
    String? flyWheelSeatingGrooveOd = '',
    String? flyWheelSeatingOd = '',
    String? j1EndFacePosition20l = '',
    String? j1RrEndFacePosition20 = '',
    String? rearFlaneDia = '',
    String? datumReferencePlanePositionK5 = '',
    String? frontFaceCenterHoleDatumDiaToPartDatumDistance = '',
    String? rearFaceCenterHoleDatumDiaToPartDatumDistance = '',
    String? frEndFaceToFwFittingFaceLength = '',
    String? frontShaftRunoutK31 = '',
    String? journal1OuterDiameterRunoutK3 = '',
    String? j1Od = '',
    String? rrAxisRunoutK3 = '',
    String? rrFlangeOuterDiameterRunoutK4 = '',
    String? rearFlangeFaceRunoutK6 = '',
    String? j5OdRunoutK2 = '',
    String? diaFrAxis2 = '',
    String? diaFrAxis3 = '',
    String? frontShaftRunoutK32 = '',
    String? frontShaftRunoutK33 = '',
    String? remarksqc120l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"serial_number_marking_condition":"$serialNumberMarkingCondition",
"machining_surface":"$machiningSurface",
"circularity_fr_rr_center_hole":"$circularityFrRrCenterHole",
"position_fr_center_datum_hole":"$positionFrCenterDatumHole",
"position_rr_center_datum_hole":"$positionRrCenterDatumHole",
"dia_fr_Axis_1":"$diaFrAxis1",
"dia_fr_Axis_2":"$diaFrAxis2",
"dia_fr_Axis_3":"$diaFrAxis3",
"dia_fr_axis_groove":"$diaFrAxisGroove",
"j5_relief_groove_dia":"$j5ReliefGrooveDia",
"rear_flange_width":"$rearFlangeWidth",
"fly_wheel_seating_groove_od":"$flyWheelSeatingGrooveOd",
"fly_wheel_seating_od":"$flyWheelSeatingOd",
"j_1_end_face_position_2_0l":"$j1EndFacePosition20l",
"j_1_rr_end_face_position_2_0":"$j1RrEndFacePosition20",
 "j1_od": "$j1Od",
"rear_flane_dia":"$rearFlaneDia",
"datum_reference_plane_position_k5":"$datumReferencePlanePositionK5",
"front_face_center_hole_datum_dia_to_part_datum_distance":"$frontFaceCenterHoleDatumDiaToPartDatumDistance",
"rear_face_center_hole_datum_dia_to_part_datum_distance":"$rearFaceCenterHoleDatumDiaToPartDatumDistance",
"fr_end_face_to_fw_fitting_face_length":"$frEndFaceToFwFittingFaceLength",
"front_shaft_runout_k3_1":"$frontShaftRunoutK31",
"front_shaft_runout_k3_2":"$frontShaftRunoutK32",
"front_shaft_runout_k3_3":"$frontShaftRunoutK33",
"journal_1_outer_diameter_runout_k3": "$journal1OuterDiameterRunoutK3",
"rr_axis_runout_k3":"$rrAxisRunoutK3",
"rr_flange_outer_diameter_runout_k4":"$rrFlangeOuterDiameterRunoutK4",
"rear_flange_face_runout_k6":"$rearFlangeFaceRunoutK6",
"j_5_od_runout_k2": "$j5OdRunoutK2",
"remarksqc1_2_0l":"$remarksqc120l"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcOneTwo',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_1_2_0l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcThreeTwoLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? machinedSurfacePinJournal = '',
    String? hv1JValue = '',
    String? hv2JValue = '',
    String? hv3JValue = '',
    String? hv4JValue = '',
    String? hv5JValue = '',
    String? pin1TopHvValue = '',
    String? pin2TopHvValue = '',
    String? pin3TopHvValue = '',
    String? pin4TopHvValue = '',
    String? pin1BottomHvValue = '',
    String? pin2BottomHvValue = '',
    String? pin3BottomHvValue = '',
    String? pin4BottomHvValue = '',
    String? journal24Width1 = '',
    String? journal3Width = '',
    String? pin1Width = '',
    String? pin2Width = '',
    String? pin3Width = '',
    String? pin4Width = '',
    String? journal1stHardeningRange = '',
    String? hardening1JRange = '',
    String? hardening2JRange = '',
    String? hardening3JRange = '',
    String? hardening4JRange = '',
    String? hardening5JRange = '',
    String? journal5thNonHardeningRange = '',
    String? hardening1PRange = '',
    String? hardening2PRange = '',
    String? hardening3PRange = '',
    String? hardening4PRange = '',
    String? journal1OuterDiameterRunoutAfterHardening = '',
    String? journal2OuterDiameterRunoutAfterHardening = '',
    String? journal3OuterDiameterRunoutAfterHardening = '',
    String? journal4OuterDiameterRunoutAfterHardening = '',
    String? journal5OuterDiameterRunoutAfterHardening = '',
    String? hardeningCrack = '',
    String? journal24Width2 = '',
    String? remarksqc320l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"machined_surface_pin_journal":"$machinedSurfacePinJournal",
"hv_1_j_value":"$hv1JValue",
"hv_2_j_value":"$hv2JValue",
"hv_3_j_value":"$hv3JValue",
"hv_4_j_value":"$hv4JValue",
"hv_5_j_value":"$hv5JValue",
"pin_1_top_hv_value":"$pin1TopHvValue",
"pin_2_top_hv_value":"$pin2TopHvValue",
"pin_3_top_hv_value":"$pin3TopHvValue",
"pin_4_top_hv_value":"$pin4TopHvValue",
"pin_1_bottom_hv_value":"$pin1BottomHvValue",
"pin_2_bottom_hv_value":"$pin2BottomHvValue",
"pin_3_bottom_hv_value":"$pin3BottomHvValue",
"pin_4_bottom_hv_value":"$pin4BottomHvValue",
"journal_2_4_width_1":"$journal24Width1",
"journal_3_width":"$journal3Width",
"pin_1_width":"$pin1Width",
"pin_2_width":"$pin2Width",
"pin_3_width":"$pin3Width",
"pin_4_width":"$pin4Width",
"journal_1st_hardening_range":"$journal1stHardeningRange",
"hardening_1_j_range":"$hardening1JRange",
"hardening_2_j_range":"$hardening2JRange",
"hardening_3_j_range":"$hardening3JRange",
"hardening_4_j_range":"$hardening4JRange",
"hardening_5_j_range":"$hardening5JRange",
"journal_5th_non_hardening_range":"$journal5thNonHardeningRange",
"hardening_1_p_range":"$hardening1PRange",
"hardening_2_p_range":"$hardening2PRange",
"hardening_3_p_range":"$hardening3PRange",
"hardening_4_p_range":"$hardening4PRange",
"journal_1_outer_diameter_runout_after_hardening":"$journal1OuterDiameterRunoutAfterHardening",
"journal_2_outer_diameter_runout_after_hardening":"$journal2OuterDiameterRunoutAfterHardening",
"journal_3_outer_diameter_runout_after_hardening":"$journal3OuterDiameterRunoutAfterHardening",
"journal_4_outer_diameter_runout_after_hardening":"$journal4OuterDiameterRunoutAfterHardening",
"journal_5_outer_diameter_runout_after_hardening":"$journal5OuterDiameterRunoutAfterHardening",
"hardening_crack":"$hardeningCrack",
"journal_2_4_width_2":"$journal24Width2",
"remarksqc3_2_0l":"$remarksqc320l"

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcThreeTwoLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_3_2_0l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcFourTwoLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? machiningSurfaceFrMountingScrewHolePilotBearingBoreFlywheelMountingScrewHolesKnockHole =
        '',
    String? machiningSurfaceFrontAxisOdRrFlangeOdFrRrCenterHolesPilotBearingHoleFlywheelMountingScrewHole =
        '',
    String? frCenterHoleContact = '',
    String? frMountingScrewHoleCounterboreDiameterAndDepth = '',
    String? frMountingScrewPilotHoleDepth = '',
    String? knockHoleDiameterDepth = '',
    String? rrCenterHoleContact = '',
    String? pilotBearingBorePilotHoleDiameterAndDepth = '',
    String? pilotBearingHoleDepth = '',
    String? flywheelMountingScrewHoleDiameter = '',
    String? flywheelMountingScrewEffectiveDiameter = '',
    String? flywheelMountingRelativePositionOfPilotHoles = '',
    String? pilotBearingHoleDiameter = '',
    String? pilotBearingHoleRoundness = '',
    String? pilotBearingHoleMediumFinishPilotHoleDiameterDepth = '',
    String? flywheelMountingScrewHolesPosition = '',
    String? positionOfKnockHole = '',
    String? frCenterHoleToFlywheelMountingEndFaceDistance = '',
    String? rrCenterHoleToFlywheelMountingEndFaceDistance = '',
    String? pilotHoleRunout = '',
    String? journal1OdRunout = '',
    String? rrFlangeRunout = '',
    String? frMountingScrewEffectiveDiameterDepth = '',
    String? remarksqc420l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"machining_surface_fr_mounting_screw_hole_pilot_bearing_bore_flywheel_mounting_screw_holes_knock_hole":"$machiningSurfaceFrMountingScrewHolePilotBearingBoreFlywheelMountingScrewHolesKnockHole",
"machining_surface_front_axis_od_rr_flange_od_fr_rr_center_holes_pilot_bearing_hole_flywheel_mounting_screw_hole":"$machiningSurfaceFrontAxisOdRrFlangeOdFrRrCenterHolesPilotBearingHoleFlywheelMountingScrewHole",
"fr_center_hole_contact":"$frCenterHoleContact",
"fr_mounting_screw_hole_counterbore_diameter_and_depth":"$frMountingScrewHoleCounterboreDiameterAndDepth",
"fr_mounting_screw_pilot_hole_depth":"$frMountingScrewPilotHoleDepth",
"fr_mounting_screw_effective_diameter_depth":"$frMountingScrewEffectiveDiameterDepth",
"knock_hole_diameter_depth":"$knockHoleDiameterDepth",
"rr_center_hole_contact":"$rrCenterHoleContact",
"pilot_bearing_bore_pilot_hole_diameter_and_depth":"$pilotBearingBorePilotHoleDiameterAndDepth",
"pilot_bearing_hole_depth":"$pilotBearingHoleDepth",
"flywheel_mounting_screw_hole_diameter":"$flywheelMountingScrewHoleDiameter",
"flywheel_mounting_screw_effective_diameter":"$flywheelMountingScrewEffectiveDiameter",
"flywheel_mounting_relative_position_of_pilot_holes":"$flywheelMountingRelativePositionOfPilotHoles",
"pilot_bearing_hole_diameter":"$pilotBearingHoleDiameter",
"pilot_bearing_hole_roundness":"$pilotBearingHoleRoundness",
"pilot_bearing_hole_medium_finish_pilot_hole_diameter_depth":"$pilotBearingHoleMediumFinishPilotHoleDiameterDepth",
"flywheel_mounting_screw_holes_position":"$flywheelMountingScrewHolesPosition",
"position_of_knock_hole":"$positionOfKnockHole",
"fr_center_hole_to_flywheel_mounting_end_face_distance":"$frCenterHoleToFlywheelMountingEndFaceDistance",
"rr_center_hole_to_flywheel_mounting_end_face_distance":"$rrCenterHoleToFlywheelMountingEndFaceDistance",
"pilot_hole_runout":"$pilotHoleRunout",
"journal_1_od_runout":"$journal1OdRunout",
"rr_flange_runout":"$rrFlangeRunout",
"remarksqc4_2_0l":"$remarksqc420l"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcFourTwoLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_4_2_0l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcOneOnePointFiveCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? serialNumberMarkingCondition = '',
    String? machiningSurface = '',
    String? circularityFrRrCenterHole = '',
    String? positionFrCenterDatumHole = '',
    String? positionRrCenterDatumHole = '',
    String? diaFrAxis1 = '',
    String? diaFrAxis2 = '',
    String? diaFRAxisGroove = '',
    String? j5ReliefGrooveDia = '',
    String? rearFlangeWidth = '',
    String? flyWheelSeatingGrooveOD = '',
    String? flyWheelSeatingOD = '',
    String? j1EndFacePosition = '',
    String? j1RRSideEndFacePosition = '',
    String? j1Od = '',
    String? rearFlaneDia = '',
    String? phaseRefPlanePositionDatum = '',
    String? frontFaceCenterHoleDatumDiaToPartDatumDistance = '',
    String? rearFaceCenterHoleDatumDiaToPartDatumDistance = '',
    String? fREndFaceToFWFittingFaceLength = '',
    String? frontShaftRunout1 = '',
    String? frontShaftRunout2 = '',
    String? journal1OuterDiameterRunout = '',
    String? rRAxisRunout = '',
    String? rrFlangeOuterDiameterRunout = '',
    String? rearFlangeFaceRunout = '',
    String? j4ODRunout = '',
    String? fRAxisStepDia = '',
    String? j1FrontFacePosition = '',
    String? fRAxisStep = '',
    String? remarksqc115l = '',
  }) {
    final body =
        '''
{
  "Measurer_Name": "$measurerName",
  "Shift": "$shift",
  "Model_Name": "$modelName",
  "Process_Name": "$processName",
  "Part_Serial_Name": "$partSerialName",
  "Serial_number_marking_condition": "$serialNumberMarkingCondition",
  "Machining_Surface": "$machiningSurface",
  "Circularity_Fr_Rr_center_Hole": "$circularityFrRrCenterHole",
  "Position_Fr_center_datum_hole": "$positionFrCenterDatumHole",
  "Position_Rr_center_datum_hole": "$positionRrCenterDatumHole",
  "Dia_Fr_Axis_1": "$diaFrAxis1",
  "Dia_Fr_Axis_2": "$diaFrAxis2",
  "Dia_FR_axis_groove": "$diaFRAxisGroove",
  "FR_Axis_step_Dia": "$fRAxisStepDia",
  "J5_Relief_groove_dia": "$j5ReliefGrooveDia",
  "Rear_flange_width": "$rearFlangeWidth",
  "Fly_wheel_seating_groove_OD": "$flyWheelSeatingGrooveOD",
  "Fly_wheel_seating_OD": "$flyWheelSeatingOD",
  "J_1_end_face_position": "$j1EndFacePosition",
  "J_1_front_face_position": "$j1FrontFacePosition",
  "J_1_RR_side_end_face_position": "$j1RRSideEndFacePosition",
  "J1_OD": "$j1Od",
  "Rear_flane_dia": "$rearFlaneDia",
  "Phase_ref_plane_position_datum": "$phaseRefPlanePositionDatum",
  "Front_face_center_hole_datum_dia_to_part_datum_distance": "$frontFaceCenterHoleDatumDiaToPartDatumDistance",
  "Rear_face_center_hole_datum_dia_to_part_datum_distance": "$rearFaceCenterHoleDatumDiaToPartDatumDistance",
  "FR_end_face_to_FW_fitting_face_length": "$fREndFaceToFWFittingFaceLength",
  "Front_shaft_runout_1": "$frontShaftRunout1",
  "Front_shaft_runout_2": "$frontShaftRunout2",
  "FR_axis_step": "$fRAxisStep",
  "Journal_1_outer_diameter_runout": "$journal1OuterDiameterRunout",
  "RR_axis_runout": "$rRAxisRunout",
  "Rr_Flange_outer_diameter_runout": "$rrFlangeOuterDiameterRunout",
  "Rear_flange_face_runout": "$rearFlangeFaceRunout",
  "J4_OD_runout": "$j4ODRunout",
  "remarksqc1_1_5_l":"$remarksqc115l"






























}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcOneOnePointFive',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_1_1_5l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcThreeOnePointFiveLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? machinedSurfacePinJournal = '',
    String? j1HvValue = '',
    String? j2HvValue = '',
    String? j3HvValue = '',
    String? j4HvValue = '',
    String? pin1TopHvValue = '',
    String? pin2TopHvValue = '',
    String? pin3TopHvValue = '',
    String? pin1BottomHvValue = '',
    String? pin2BottomHvValue = '',
    String? pin3BottomHvValue = '',
    String? journal23Width1 = '',
    String? pin1Width = '',
    String? pin2Width = '',
    String? pin3Width = '',
    String? journal1stHardeningRange = '',
    String? hardening1JRange = '',
    String? hardening2JRange = '',
    String? hardening3JRange = '',
    String? hardening4JRange = '',
    String? journal4thNonHardeningRange = '',
    String? hardening1PRange = '',
    String? hardening2PRange = '',
    String? hardening3PRange = '',
    String? journal1OuterDiameterRunoutAfterHardening = '',
    String? journal2OuterDiameterRunoutAfterHardening = '',
    String? journal3OuterDiameterRunoutAfterHardening = '',
    String? journal4OuterDiameterRunoutAfterHardening = '',
    String? hardeningCrack = '',
    String? journal23Width2 = '',
    String? remarksqc315l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
  "machined_surface_pin_journal": "$machinedSurfacePinJournal",
  "j_1_hv_value": "$j1HvValue",
  "j_2_hv_value": "$j2HvValue",
  "j_3_hv_value": "$j3HvValue",
  "j_4_hv_value": "$j4HvValue",
  "pin_1_top_hv_value": "$pin1TopHvValue",
  "pin_2_top_hv_value": "$pin2TopHvValue",
  "pin_3_top_hv_value": "$pin3TopHvValue",
  "pin_1_bottom_hv_value": "$pin1BottomHvValue",
  "pin_2_bottom_hv_value": "$pin2BottomHvValue",
  "pin_3_bottom_hv_value": "$pin3BottomHvValue",
  "journal_2_3_width_1": "$journal23Width1",
  "pin_1_width": "$pin1Width",
  "pin_2_width": "$pin2Width",
  "pin_3_width": "$pin3Width",
  "journal_1st_hardening_range": "$journal1stHardeningRange",
  "hardening_1_j_range": "$hardening1JRange",
  "hardening_2_j_range": "$hardening2JRange",
  "hardening_3_j_range": "$hardening3JRange",
  "hardening_4_j_range": "$hardening4JRange",
  "journal_4th_non_hardening_range": "$journal4thNonHardeningRange",
  "hardening_1_p_range": "$hardening1PRange",
  "hardening_2_p_range": "$hardening2PRange",
  "hardening_3_p_range": "$hardening3PRange",
  "journal_1_outer_diameter_runout_after_hardening": "$journal1OuterDiameterRunoutAfterHardening",
  "journal_2_outer_diameter_runout_after_hardening": "$journal2OuterDiameterRunoutAfterHardening",
  "journal_3_outer_diameter_runout_after_hardening": "$journal3OuterDiameterRunoutAfterHardening",
  "journal_4_outer_diameter_runout_after_hardening": "$journal4OuterDiameterRunoutAfterHardening",
  "hardening_crack": "$hardeningCrack",
 "journal_2_3_width_2": "$journal23Width2",
"remarksqc3_1_5l":"$remarksqc315l"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcThreeOnePointFiveLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_3_1_5l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcFourOnePointFiveLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? machiningSurfaceFrMountingScrewHolePilotBearingBoreFlywheelMountingScrewHolesKnockHole =
        '',
    String? machiningSurfaceFrontAxisOdRrFlangeOdFrRrCenterHolesPilotBearingHoleFlywheelMountingScrewHole =
        '',
    String? frCenterHoleContact = '',
    String? frMountingScrewHoleCounterboreDiameterAndDepth = '',
    String? frMountingScrewPilotHoleDepth = '',
    String? frMountingScrewEffectiveDiameterDepth = '',
    String? rrCenterHoleContact = '',
    String? pilotBearingBorePilotHoleDiameterAndDepth = '',
    String? pilotBearingHoleDepth = '',
    String? knockHoleDiameterDepth = '',
    String? flywheelMountingScrewEffectiveDiameter = '',
    String? flywheelMountingScrewHoleDiameter = '',
    String? pilotBearingHoleDiameter = '',
    String? pilotBearingHoleRoundness = '',
    String? flywheelMountingRelativePositionOfPilotHoles = '',
    String? pilotBearingHoleMediumFinishPilotHoleDiameterDepth = '',
    String? flywheelMountingScrewHolesPosition = '',
    String? positionOfKnockHole = '',
    String? frCenterHoleToFlywheelMountingEndFaceDistance = '',
    String? rrCenterHoleToFlywheelMountingEndFaceDistance = '',
    String? pilotHoleRunout = '',
    String? journal1OdRunout = '',
    String? rrFlangeRunout = '',
    String? remarksqc415l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"machining_surface_fr_mounting_screw_hole_pilot_bearing_bore_flywheel_mounting_screw_holes_knock_hole":"$machiningSurfaceFrMountingScrewHolePilotBearingBoreFlywheelMountingScrewHolesKnockHole",
"machining_surface_front_axis_od_rr_flange_od_fr_rr_center_holes_pilot_bearing_hole_flywheel_mounting_screw_hole":"$machiningSurfaceFrontAxisOdRrFlangeOdFrRrCenterHolesPilotBearingHoleFlywheelMountingScrewHole",
"fr_center_hole_contact":"$frCenterHoleContact",
"fr_mounting_screw_hole_counterbore_diameter_and_depth":"$frMountingScrewHoleCounterboreDiameterAndDepth",
"fr_mounting_screw_pilot_hole_depth":"$frMountingScrewPilotHoleDepth",
"fr_mounting_screw_effective_diameter_depth":"$frMountingScrewEffectiveDiameterDepth",
"rr_center_hole_contact":"$rrCenterHoleContact",
"pilot_bearing_bore_pilot_hole_diameter_and_depth":"$pilotBearingBorePilotHoleDiameterAndDepth",
"pilot_bearing_hole_depth":"$pilotBearingHoleDepth",
"knock_hole_diameter_depth":"$knockHoleDiameterDepth",
"flywheel_mounting_screw_effective_diameter":"$flywheelMountingScrewEffectiveDiameter",
"flywheel_mounting_screw_hole_diameter":"$flywheelMountingScrewHoleDiameter",
"pilot_bearing_hole_diameter":"$pilotBearingHoleDiameter",
"pilot_bearing_hole_roundness":"$pilotBearingHoleRoundness",
"flywheel_mounting_relative_position_of_pilot_holes":"$flywheelMountingRelativePositionOfPilotHoles",
"pilot_bearing_hole_medium_finish_pilot_hole_diameter_depth":"$pilotBearingHoleMediumFinishPilotHoleDiameterDepth",
"flywheel_mounting_screw_holes_position":"$flywheelMountingScrewHolesPosition",
"position_of_knock_hole":"$positionOfKnockHole",
"fr_center_hole_to_flywheel_mounting_end_face_distance":"$frCenterHoleToFlywheelMountingEndFaceDistance",
"rr_center_hole_to_flywheel_mounting_end_face_distance":"$rrCenterHoleToFlywheelMountingEndFaceDistance",
"pilot_hole_runout":"$pilotHoleRunout",
"journal_1_od_runout":"$journal1OdRunout",
"rr_flange_runout":"$rrFlangeRunout",
"remarksqc4_1_5l":"$remarksqc415l"

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcFourOnePointFiveLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_4_1_5l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcFiveTwoLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? frontAxisAndFace = '',
    String? thrustFaceAppearance = '',
    String? pinSurface = '',
    String? pinCornerRadius = '',
    String? journalSurface = '',
    String? journalCornerRadius = '',
    String? rearFlangeRearAxisMachiningSurface = '',
    String? frontShaftEndFaceThrustEndFacePosition = '',
    String? rrFlangeEndFaceThrustEndFacePosition = '',
    String? thrustWidthThrustRPosition = '',
    String? journalOilHoleChamferBaseDistribution = '',
    String? landWidthBWOilHoleChamferThePinSidFace = '',
    String? thrustWidth = '',
    String? pin1OuterDiameter = '',
    String? pin2OuterDiameter = '',
    String? pin3OuterDiameter = '',
    String? pin4OuterDiameter = '',
    String? pin1Roundness = '',
    String? pin2Roundness = '',
    String? pin3Roundness = '',
    String? pin4Roundness = '',
    String? journal1OuterDiameter = '',
    String? journal2OuterDiameter = '',
    String? journal3OuterDiameter = '',
    String? journal4OuterDiameter = '',
    String? journal5OuterDiameter = '',
    String? journal1Roundness = '',
    String? journal2Roundness = '',
    String? journal3Roundness = '',
    String? journal4Roundness = '',
    String? journal5Roundness = '',
    String? rrFlangeOuterDiameter = '',
    String? rrFlangeRoundness = '',
    String? allPinStraightness = '',
    String? straightness15l1j2j4j2l1j2j4j5j = '',
    String? journal3rdStraightness = '',
    String? frontAxisOuterDiameter = '',
    String? frontAxisRoundnessCommon = '',
    String? flyweelMountingBossOuterDiameter = '',
    String? flyweelMountingBossRoundness = '',
    String? frontAxisEndFacePlaneCheck = '',
    String? rrFlangeEndFacePlaneCheck = '',
    String? frontAxisOuterDiameterRunoutWithCenterK10 = '',
    String? journal1OuterDiameterRunoutWithCenterK10 = '',
    String? journal2OuterDiameterRunoutWithCenterK10 = '',
    String? journals3OuterDiameterRunoutWithCenterK10 = '',
    String? journals4OuterDiameterRunoutWithCenterK10 = '',
    String? journals5OuterDiameterRunoutWithCenterK10 = '',
    String? rrFlangeOuterDiameterRunoutWithCenterK10 = '',
    String? rrBossRunoutWithCenterK10 = '',
    String? frontAxisEndFaceRunoutWithCenterK11 = '',
    String? frontShaftEndFacePerpendicualrityWithCenterK11 = '',
    String? thrustEndFaceRunoutWithCenterK11 = '',
    String? thrustEndFacePerpendicularityWithCenterK11 = '',
    String? rrFlangeEndFacePerpendicularityWithCenterK11 = '',
    String? pin1PositionWithCenterK8 = '',
    String? pin2PositionWithCenterK7 = '',
    String? pin3PositionEithCenterK7 = '',
    String? pin4PositionWithCenterK8 = '',
    String? pin1ParallelismWithCenterK9 = '',
    String? pin2ParallelismWithCenterK9 = '',
    String? pin3ParallelismWithCenterK9 = '',
    String? pin4ParallelismWithCenterK9 = '',
    String? pin112StrokeWithCenterK9 = '',
    String? pin212StrokeWithCenterK9 = '',
    String? pin312StrokeWithCenterK9 = '',
    String? pin412StrokeWithCenterK10 = '',
    String? frAxisRunoutWithoutCenterK10 = '',
    String? runout2jWithoutCenterK10 = '',
    String? runout3jWithoutCenterK10 = '',
    String? runout4jWithoutCenterK10 = '',
    String? rrAxisRunoutWithoutCenterK10 = '',
    String? rrFlywheelAxisOdRunoutWithoutCenterK10 = '',
    String? rrFlywheelPerpendicularityWithoutCenterK10 = '',
    String? pin1PositionWithoutCenterK8 = '',
    String? pin2PositionWithoutCenterK7 = '',
    String? pin3PositionWithoutCenterK7 = '',
    String? pin4PositionWithoutCenterK8 = '',
    String? pin1ParallelismWithoutCenterK9 = '',
    String? pin2ParallelismWithoutCenterK9 = '',
    String? pin3ParallelismWithoutCenterK9 = '',
    String? pin4ParallelismWithoutCenterK9 = '',
    String? pin112StrokeWithoutCenterK9 = '',
    String? pin212StrokeWithoutCenterK9 = '',
    String? pin312StrokeWithoutCenterK9 = '',
    String? pin412StrokeWithoutCenterK9 = '',
    String? rrFlangeOuterDiameterRoughnessK10 = '',
    String? pin1SurfaceHardness = '',
    String? pin2SurfaceHardness = '',
    String? pin3SurfaceHardness = '',
    String? pin4SurfaceHardness = '',
    String? journal1SurfaceHardness = '',
    String? journal2SurfaceHardness = '',
    String? journal3SurfaceHardness = '',
    String? journal4SurfaceHardness = '',
    String? journal5SurfaceHardness = '',
    String? pinJournalGrindingCrack = '',
    String? remarksqc520l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"front_axis_and_face":"$frontAxisAndFace",
"thrust_face_appearance":"$thrustFaceAppearance",
"pin_surface":"$pinSurface",
"pin_corner_radius":"$pinCornerRadius",
"journal_surface":"$journalSurface",
"journal_corner_radius":"$journalCornerRadius",
"rear_flange_rear_axis_machining_surface":"$rearFlangeRearAxisMachiningSurface",
"front_shaft_end_face_thrust_end_face_position":"$frontShaftEndFaceThrustEndFacePosition",
"rr_flange_end_face_thrust_end_face_position":"$rrFlangeEndFaceThrustEndFacePosition",
"thrust_width_thrust_r_position":"$thrustWidthThrustRPosition",
"journal_oil_hole_chamfer_base_distribution":"$journalOilHoleChamferBaseDistribution",
"land_width_b_w_oil_hole_chamfer_the_pin_sid_face":"$landWidthBWOilHoleChamferThePinSidFace",
"thrust_width":"$thrustWidth",
"pin_1_outer_diameter":"$pin1OuterDiameter",
"pin_2_outer_diameter":"$pin2OuterDiameter",
"pin_3_outer_diameter":"$pin3OuterDiameter",
"pin_4_outer_diameter":"$pin4OuterDiameter",
"pin_1_roundness":"$pin1Roundness",
"pin_2_roundness":"$pin2Roundness",
"pin_3_roundness":"$pin3Roundness",
"pin_4_roundness":"$pin4Roundness",
"journal_1_outer_diameter":"$journal1OuterDiameter",
"journal_2_outer_diameter":"$journal2OuterDiameter",
"journal_3_outer_diameter":"$journal3OuterDiameter",
"journal_4_outer_diameter":"$journal4OuterDiameter",
"journal_5_outer_diameter":"$journal5OuterDiameter",
"journal_1_roundness":"$journal1Roundness",
"journal_2_roundness":"$journal2Roundness",
"journal_3_roundness":"$journal3Roundness",
"journal_4_roundness":"$journal4Roundness",
"journal_5_roundness":"$journal5Roundness",
"rr_flange_outer_diameter":"$rrFlangeOuterDiameter",
"rr_flange_roundness":"$rrFlangeRoundness",
"all_pin_straightness":"$allPinStraightness",
"straightness_1_5l_1j_2j_4j_2l_1j_2j_4j_5j":"$straightness15l1j2j4j2l1j2j4j5j",
"journal_3rd_straightness":"$journal3rdStraightness",
"front_axis_outer_diameter":"$frontAxisOuterDiameter",
"front_axis_roundness_common":"$frontAxisRoundnessCommon",
"flyweel_mounting_boss_outer_diameter":"$flyweelMountingBossOuterDiameter",
"flyweel_mounting_boss_roundness":"$flyweelMountingBossRoundness",
"front_axis_end_face_plane_check":"$frontAxisEndFacePlaneCheck",
"rr_flange_end_face_plane_check":"$rrFlangeEndFacePlaneCheck",
"front_axis_outer_diameter_runout_with_center_k10":"$frontAxisOuterDiameterRunoutWithCenterK10",
"journal_1_outer_diameter_runout_with_center_k10":"$journal1OuterDiameterRunoutWithCenterK10",
"journal_2_outer_diameter_runout_with_center_k10":"$journal2OuterDiameterRunoutWithCenterK10",
"journals_3_outer_diameter_runout_with_center_k10":"$journals3OuterDiameterRunoutWithCenterK10",
"journals_4_outer_diameter_runout_with_center_k10":"$journals4OuterDiameterRunoutWithCenterK10",
"journals_5_outer_diameter_runout_with_center_k10":"$journals5OuterDiameterRunoutWithCenterK10",
"rr_flange_outer_diameter_runout_with_center_k10":"$rrFlangeOuterDiameterRunoutWithCenterK10",
"rr_boss_runout_with_center_k10":"$rrBossRunoutWithCenterK10",
"front_axis_end_face_runout_with_center_k11":"$frontAxisEndFaceRunoutWithCenterK11",
"front_shaft_end_face_perpendicualrity_with_center_k11":"$frontShaftEndFacePerpendicualrityWithCenterK11",
"thrust_end_face_runout_with_center_k11":"$thrustEndFaceRunoutWithCenterK11",
"thrust_end_face_perpendicularity_with_center_k11":"$thrustEndFacePerpendicularityWithCenterK11",
"rr_flange_end_face_perpendicularity_with_center_k11":"$rrFlangeEndFacePerpendicularityWithCenterK11",
"pin_1_position_with_center_k8":"$pin1PositionWithCenterK8",
"pin_2_position_with_center_k7":"$pin2PositionWithCenterK7",
"pin_3_position_eith_center_k7":"$pin3PositionEithCenterK7",
"pin_4_position_with_center_k8":"$pin4PositionWithCenterK8",
"pin_1_parallelism_with_center_k9":"$pin1ParallelismWithCenterK9",
"pin_2_parallelism_with_center_k9":"$pin2ParallelismWithCenterK9",
"pin_3_parallelism_with_center_k9":"$pin3ParallelismWithCenterK9",
"pin_4_parallelism_with_center_k9":"$pin4ParallelismWithCenterK9",
"pin_1_1_2_stroke_with_center_k9":"$pin112StrokeWithCenterK9",
"pin_2_1_2_stroke_with_center_k9":"$pin212StrokeWithCenterK9",
"pin_3_1_2_stroke_with_center_k9":"$pin312StrokeWithCenterK9",
"pin_4_1_2_stroke_with_center_k10":"$pin412StrokeWithCenterK10",
"fr_axis_runout_without_center_k10":"$frAxisRunoutWithoutCenterK10",
"runout_2j_without_center_k10":"$runout2jWithoutCenterK10",
"runout_3j_without_center_k10":"$runout3jWithoutCenterK10",
"runout_4j_without_center_k10":"$runout4jWithoutCenterK10",
"rr_axis_runout_without_center_k10":"$rrAxisRunoutWithoutCenterK10",
"rr_flywheel_axis_od_runout_without_center_k10":"$rrFlywheelAxisOdRunoutWithoutCenterK10",
"rr_flywheel_perpendicularity_without_center_k10":"$rrFlywheelPerpendicularityWithoutCenterK10",
"pin_1_position_without_center_k8":"$pin1PositionWithoutCenterK8",
"pin_2_position_without_center_k7":"$pin2PositionWithoutCenterK7",
"pin_3_position_without_center_k7":"$pin3PositionWithoutCenterK7",
"pin_4_position_without_center_k8":"$pin4PositionWithoutCenterK8",
"pin_1_parallelism_without_center_k9":"$pin1ParallelismWithoutCenterK9",
"pin_2_parallelism_without_center_k9":"$pin2ParallelismWithoutCenterK9",
"pin_3_parallelism_without_center_k9":"$pin3ParallelismWithoutCenterK9",
"pin_4_parallelism_without_center_k9":"$pin4ParallelismWithoutCenterK9",
"pin_1_1_2_stroke_without_center_k9":"$pin112StrokeWithoutCenterK9",
"pin_2_1_2_stroke_without_center_k9":"$pin212StrokeWithoutCenterK9",
"pin_3_1_2_stroke_without_center_k9":"$pin312StrokeWithoutCenterK9",
"pin_4_1_2_stroke_without_center_k9":"$pin412StrokeWithoutCenterK9",
"rr_flange_outer_diameter_roughness_k10":"$rrFlangeOuterDiameterRoughnessK10",
"pin_1_surface_hardness":"$pin1SurfaceHardness",
"pin_2_surface_hardness":"$pin2SurfaceHardness",
"pin_3_surface_hardness":"$pin3SurfaceHardness",
"pin_4_surface_hardness":"$pin4SurfaceHardness",
"journal_1_surface_hardness":"$journal1SurfaceHardness",
"journal_2_surface_hardness":"$journal2SurfaceHardness",
"journal_3_surface_hardness":"$journal3SurfaceHardness",
"journal_4_surface_hardness":"$journal4SurfaceHardness",
"journal_5_surface_hardness":"$journal5SurfaceHardness",
"pin_journal_grinding_crack":"$pinJournalGrindingCrack",
"remarksqc5_2_0l":"$remarksqc520l"
     
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcFiveTwoLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_5_2_0l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcSixTwoLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? balanceCorrectionHoleAppearance = '',
    String? keywayChamfer = '',
    String? keySurface = '',
    String? keywayWidth1 = '',
    String? key1GrooveDepth = '',
    String? key2GrooveDepth = '',
    String? key1GroovePosition = '',
    String? key2GroovePosition = '',
    String? keyway1Parallelism = '',
    String? keyway2Parallelism = '',
    String? keywayRelativePosition = '',
    String? keyPressFittingSurface = '',
    String? knockPinSurface = '',
    String? knockPinPressFittingSurface = '',
    String? keyPressHeight1 = '',
    String? knockPinPressFitHeight = '',
    String? keywayWidth2 = '',
    String? keyPressHeight2 = '',
    String? remarksqc620l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"balance_correction_hole_appearance":"$balanceCorrectionHoleAppearance",
"keyway_chamfer":"$keywayChamfer",
"key_surface":"$keySurface",
"keyway_width_1":"$keywayWidth1",
"keyway_width_2":"$keywayWidth2",
"key_1_groove_depth":"$key1GrooveDepth",
"key_2_groove_depth":"$key2GrooveDepth",
"key_1_groove_position":"$key1GroovePosition",
"key_2_groove_position":"$key2GroovePosition",
"keyway_1_parallelism":"$keyway1Parallelism",
"keyway_2_parallelism":"$keyway2Parallelism",
"keyway_relative_position":"$keywayRelativePosition",
"key_press_fitting_surface":"$keyPressFittingSurface",
"knock_pin_surface":"$knockPinSurface",
"knock_pin_press_fitting_surface":"$knockPinPressFittingSurface",
"key_press_height_1":"$keyPressHeight1",
"key_press_height_2":"$keyPressHeight2",
"knock_pin_press_fit_height":"$knockPinPressFitHeight",
"remarksqc6_2_0l":"$remarksqc620l"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcSixTwoLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_6_2_0l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcSixOnePointFiveLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? balanceCorrectionHoleAppearance = '',
    String? keywayChamfer = '',
    String? keySurface = '',
    String? keywayWidth = '',
    String? keyGrooveDepth = '',
    String? keyGroovePosition = '',
    String? keywayParallelism = '',
    String? keyPressFittingSurface = '',
    String? knockPinSurface = '',
    String? knockPinPressFittingSurface = '',
    String? keyPressHeight = '',
    String? knockPinPressFitHeight = '',
    String? remarksqc615l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"balance_correction_hole_appearance":"$balanceCorrectionHoleAppearance",
"keyway_chamfer":"$keywayChamfer",
"key_surface":"$keySurface",
"keyway_width":"$keywayWidth",
"key_groove_depth":"$keyGrooveDepth",
"key_groove_position":"$keyGroovePosition",
"keyway_parallelism":"$keywayParallelism",
"key_press_fitting_surface":"$keyPressFittingSurface",
"knock_pin_surface":"$knockPinSurface",
"knock_pin_press_fitting_surface":"$knockPinPressFittingSurface",
"key_press_height":"$keyPressHeight",
"knock_pin_press_fit_height":"$knockPinPressFitHeight",
"remarksqc6_1_5l":"$remarksqc615l"

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcSixOnePointFiveLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_6_1_5l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcSevenTwoLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? cleanlinessCrankShaftWholeAppearance = '',
    String? cleanlinessFrRrFittingHole = '',
    String? oilHoleSurface = '',
    String? pinAppearance = '',
    String? journalAppearance = '',
    String? rrFlangeAppearance = '',
    String? pinOuterDiameter1 = '',
    String? pinOuterDiameterRoundnessDiameterMethod1 = '',
    String? journalOuterDiameter1 = '',
    String? journalOuterDiameterRoundnessDiameterMethod1 = '',
    String? rrFlangeOuterDiameter = '',
    String? rrFlangeRoundnessDiameterMethod = '',
    String? rrFlangeOuterDiameterRoughness = '',
    String? pinOuterDiameter2 = '',
    String? pinOuterDiameter3 = '',
    String? pinOuterDiameter4 = '',
    String? pinOuterDiameterRoundnessDiameterMethod2 = '',
    String? pinOuterDiameterRoundnessDiameterMethod3 = '',
    String? pinOuterDiameterRoundnessDiameterMethod4 = '',
    String? journalOuterDiameter2 = '',
    String? journalOuterDiameter3 = '',
    String? journalOuterDiameter4 = '',
    String? journalOuterDiameterRoundnessDiameterMethod2 = '',
    String? journalOuterDiameterRoundnessDiameterMethod3 = '',
    String? journalOuterDiameterRoundnessDiameterMethod4 = '',
    String? journalOuterDiameter5 = '',
    String? journalOuterDiameterRoundnessDiameterMethod5 = '',
    String? remarksqc720l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"cleanliness_crank_shaft_whole_appearance":"$cleanlinessCrankShaftWholeAppearance",
"cleanliness_fr_rr_fitting_hole":"$cleanlinessFrRrFittingHole",
"oil_hole_surface":"$oilHoleSurface",
"pin_appearance":"$pinAppearance",
"journal_appearance":"$journalAppearance",
"rr_flange_appearance":"$rrFlangeAppearance",
"pin_outer_diameter_1":"$pinOuterDiameter1",
"pin_outer_diameter_2":"$pinOuterDiameter2",
"pin_outer_diameter_3":"$pinOuterDiameter3",
"pin_outer_diameter_4":"$pinOuterDiameter4",
"pin_outer_diameter_roundness_diameter_method_1":"$pinOuterDiameterRoundnessDiameterMethod1",
"pin_outer_diameter_roundness_diameter_method_2":"$pinOuterDiameterRoundnessDiameterMethod2",
"pin_outer_diameter_roundness_diameter_method_3":"$pinOuterDiameterRoundnessDiameterMethod3",
"pin_outer_diameter_roundness_diameter_method_4":"$pinOuterDiameterRoundnessDiameterMethod4",
"journal_outer_diameter_1":"$journalOuterDiameter1",
"journal_outer_diameter_2":"$journalOuterDiameter2",
"journal_outer_diameter_3":"$journalOuterDiameter3",
"journal_outer_diameter_4":"$journalOuterDiameter4",
"journal_outer_diameter_5":"$journalOuterDiameter5",
"journal_outer_diameter_roundness_diameter_method_1":"$journalOuterDiameterRoundnessDiameterMethod1",
"journal_outer_diameter_roundness_diameter_method_2":"$journalOuterDiameterRoundnessDiameterMethod2",
"journal_outer_diameter_roundness_diameter_method_3":"$journalOuterDiameterRoundnessDiameterMethod3",
"journal_outer_diameter_roundness_diameter_method_4":"$journalOuterDiameterRoundnessDiameterMethod4",
"journal_outer_diameter_roundness_diameter_method_5":"$journalOuterDiameterRoundnessDiameterMethod5",
"rr_flange_outer_diameter":"$rrFlangeOuterDiameter",
"rr_flange_roundness_diameter_method":"$rrFlangeRoundnessDiameterMethod",
"rr_flange_outer_diameter_roughness":"$rrFlangeOuterDiameterRoughness",
        "remarksqc7_2_0l":"$remarksqc720l"


}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcSevenTwoLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_7_2_0l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class QcTwoLimitDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'qcTwoLimitData',
      apiUrl: 'http://10.82.126.73:3060/get_tnga_c_qc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic qc22lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc22lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Measured Item']''',
      );
  static dynamic qc22lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc22lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Symbol']''',
      );
  static dynamic qc22lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Acc Standard']''',
      );
  static dynamic qc22lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc22lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc22lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc22lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc22lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v2.0l')]..['data']..['Ac Lower Limit']''',
      );
  static dynamic qc215lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc215lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['Measured Item']''',
      );
  static dynamic qc215lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc215lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['Symbol']''',
      );
  static dynamic qc215lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['Acc standard ']''',
      );
  static dynamic qc215lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['ACC UPPER LIMIT']''',
      );
  static dynamic qc215lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['ACC LOWER LIMIT']''',
      );
  static dynamic qc215lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['Ac standard']''',
      );
  static dynamic qc215lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['AC UPPER LIMIT']''',
      );
  static dynamic qc215lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['AC LOWER LIMIT']''',
      );
}

class QcThreeLimitDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'qcThreeLimitData',
      apiUrl: 'http://10.82.126.73:3060/get_tnga_c_qc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic qc315lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc315lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Measured Item']''',
      );
  static dynamic qc315lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc315lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Symbol']''',
      );
  static dynamic qc315lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Acc Standard']''',
      );
  static dynamic qc315lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc315lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc315lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc315lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc315lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v1.5l')]..['data']..['Ac Lower Limit']''',
      );
  static dynamic qc32lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc32lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Measured Item']''',
      );
  static dynamic qc32lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc32lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Symbol']''',
      );
  static dynamic qc32lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Acc Standard']''',
      );
  static dynamic qc32lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc32lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc32lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc32lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc32lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc3 v2.0l')]..['data']..['Ac Lower Limit']''',
      );
}

class QcOneLimitDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'qcOneLimitData',
      apiUrl: 'http://10.82.126.73:3060/get_tnga_c_qc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic qc115lqcsparameterno(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc115lmeasureditem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Measured Item']''',
      );
  static dynamic qc115lgaugeno(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc115lsymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Symbol']''',
      );
  static dynamic qc115laccstd(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Acc Standard']''',
      );
  static dynamic qc115laccul(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qcc115laccll(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc115lactionstd(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc115lactionul(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc115lactionll(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v1.5l')]..['data']..['Ac Lower Limit']''',
      );
  static dynamic qc12lqcsparameterno(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc12lmeasureditem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['Measured Item']''',
      );
  static dynamic qc12lgaugeno(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc12lsymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['Symbol']''',
      );
  static dynamic qc12laccstd(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['Acc Standard']''',
      );
  static dynamic qc12laccul(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['ACC Upper Limit']''',
      );
  static dynamic qcc12laccll(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['ACC Lower Limit']''',
      );
  static dynamic qc12lactionstd(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['AC Standard']''',
      );
  static dynamic qc12lactionul(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['AC Upper Limit']''',
      );
  static dynamic qc12lactionll(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc1 v2.0l')]..['data']..['AC Lower Limit']''',
      );
  static dynamic qc215lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc2 v1.5l')]..['data']..['QCS parameter No']''',
      );
}

class QcFourLimitDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'qcFourLimitData',
      apiUrl: 'http://10.82.126.73:3060/get_tnga_c_qc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic qc415lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc415lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Measured Item']''',
      );
  static dynamic qc415lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc415lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Symbol']''',
      );
  static dynamic qc415lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Acc Standard']''',
      );
  static dynamic qc415lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc415lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc415lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc415lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc415lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v1.5l')]..['data']..['Ac Lower Limit']''',
      );
  static dynamic qc42lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc42lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Measured Item']''',
      );
  static dynamic qc42lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc42lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Symbol']''',
      );
  static dynamic qc42lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Acc Standard ']''',
      );
  static dynamic qc42lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc42lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc42lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc42lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc42lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc4 v2l')]..['data']..['Ac Lower Limit']''',
      );
}

class QcFiveLimitDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'qcFiveLimitData',
      apiUrl: 'http://10.82.126.73:3060/get_tnga_c_qc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic qc515lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc515lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Measured Item']''',
      );
  static dynamic qc515lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc515lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Symbol']''',
      );
  static dynamic qc515lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Acc Standard ']''',
      );
  static dynamic qc515lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc515lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc515lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc515lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc515lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v1.5l')]..['data']..['Ac Lower Limit']''',
      );
  static dynamic qc52lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc52lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Measured Item']''',
      );
  static dynamic qc52lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc52lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Symbol']''',
      );
  static dynamic qc52lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Acc Standard ']''',
      );
  static dynamic qc52lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc52lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc52lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc52lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc52lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc5 v2l')]..['data']..['Ac Lower Limit']''',
      );
}

class QcSixLimitDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'qcSixLimitData',
      apiUrl: 'http://10.82.126.73:3060/get_tnga_c_qc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic qc615lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc615lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Measured Item']''',
      );
  static dynamic qc615lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc615lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Symbol']''',
      );
  static dynamic qc615lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Acc Standard ']''',
      );
  static dynamic qc615lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc615lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc615lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc615lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc615lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v1.5l')]..['data']..['Ac Lower Limit']''',
      );
  static dynamic qc62lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc62lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Measured Item']''',
      );
  static dynamic qc62lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc62lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Symbol']''',
      );
  static dynamic qc62lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Acc Standard ']''',
      );
  static dynamic qc62lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc62lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc62lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc62lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc62lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc6 v2l')]..['data']..['Ac Lower Limit']''',
      );
}

class QcSevenLimitDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'qcSevenLimitData',
      apiUrl: 'http://10.82.126.73:3060/get_tnga_c_qc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic qc715lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc715lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Measured Item']''',
      );
  static dynamic qc715lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc715lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Symbol']''',
      );
  static dynamic qc715lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Acc Standard ']''',
      );
  static dynamic qc715lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc715lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc715lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc715lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc715lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v1.5l')]..['data']..['Ac Lower Limit']''',
      );
  static dynamic qc72lQcsParameterNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['QCS parameter No']''',
      );
  static dynamic qc72lMeasuredItem(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Measured Item']''',
      );
  static dynamic qc72lGaugeNo(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Gauge No.']''',
      );
  static dynamic qc72lSymbol(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Symbol']''',
      );
  static dynamic qc72lAccStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Acc Standard ']''',
      );
  static dynamic qc72lAccUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Acc Upper Limit']''',
      );
  static dynamic qc72lAccLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Acc Lower Limit']''',
      );
  static dynamic qc72lAcStandard(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Ac Standard']''',
      );
  static dynamic qc72lAcUpperLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Ac Upper Limit']''',
      );
  static dynamic qc72lAcLowerLimit(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.station == 'qc7 v2l')]..['data']..['Ac Lower Limit']''',
      );
}

class TngaQcFiveOnePointFiveLitreCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? processName = '',
    String? modelName = '',
    String? partSerialName = '',
    String? shift = '',
    String? frontAxisMachiningSurface = '',
    String? thrustFaceAppearance = '',
    String? pinSurface = '',
    String? pinCornerRadius = '',
    String? journalSurface = '',
    String? journalCornerRadius = '',
    String? rearFlangeMachiningSurface = '',
    String? frontAxisEndFaceThrustEndFacePosition15l = '',
    String? rrFlangeEndFaceThrustEndFacePosition15l = '',
    String? thrustWidth15l1 = '',
    String? thrustRPosition15l = '',
    String? journalOilHoleChamferBaseDistribution = '',
    String? landWidthBWOilHoleChamferAndThePinSidFaceCommon = '',
    String? thrustWidth15l2 = '',
    String? pin1OuterDiameter = '',
    String? pin2OuterDiameter = '',
    String? pin3OuterDiameter = '',
    String? pin1Roundness = '',
    String? pin2Roundness = '',
    String? pin3Roundness = '',
    String? journal1OuterDiameter = '',
    String? journal2OuterDiameter = '',
    String? journal3OuterDiameter = '',
    String? journal4OuterDiameter = '',
    String? journal1Roundness = '',
    String? journal2Roundness = '',
    String? journal3Roundness = '',
    String? journal4Roundness = '',
    String? rrFlangeOuterDiameter = '',
    String? rrFlangeRoundness = '',
    String? pinStraightnessHitWithoutFading = '',
    String? one5l1j2jAnd4j = '',
    String? journal3rdStraightness = '',
    String? frontAxisOuterDiameter = '',
    String? frontAxisRoundness = '',
    String? flyweelMountingBossOuterDiameter = '',
    String? frontAxisEndFacePlaneCheck = '',
    String? rrFlangeEndFacePlaneCheck = '',
    String? frontAxisOuterDiameterRunoutWithCenter = '',
    String? journal1OuterDiameterRunoutWithCenter = '',
    String? journal2OuterDiameterRunoutWithCenter = '',
    String? journals3OuterDiameterRunoutWithCenter = '',
    String? journals4OuterDiameterRunoutWithCenter = '',
    String? rrFlangeOuterDiameterRunoutWithCenter = '',
    String? rrBossRunoutWithCenter = '',
    String? frontAxisEndFaceRunoutWithCenter = '',
    String? frontShaftEndFacePerpendicualrityWithCenter = '',
    String? thrustEndFaceRunoutWithCenter = '',
    String? thrustEndFacePerpendicularityWithCenter = '',
    String? rrFlangeEndFacePerpendicularityWithCenterAndCommon = '',
    String? pin1PositionWithCenter = '',
    String? pin2PositionWithCenter = '',
    String? pin3PositionWithCenter = '',
    String? pin1ParallelismWithCenter = '',
    String? pin2ParallelismWithCenter = '',
    String? pin3ParallelismWithCenter = '',
    String? pin112StrokeWithCenter = '',
    String? pin212StrokeWithCenter = '',
    String? pin312StrokeWithCenter = '',
    String? frAxisRunoutWithoutCenter = '',
    String? rrFlangeAxisRunoutWithoutCenter = '',
    String? rrFlywheelAxisOdRunoutWithoutCenter = '',
    String? pin1PositionWithoutCenter = '',
    String? pin2PositionWithoutCenter = '',
    String? pin3PositionWithoutCenter = '',
    String? pin4PositionWithoutCenter = '',
    String? pin1ParallelismWithoutCenter = '',
    String? pin2ParallelismWithoutCenter = '',
    String? pin3ParallelismWithoutCenter = '',
    String? pin4ParallelismWithoutCenter = '',
    String? pin112StrokeWithoutCenter = '',
    String? pin212StrokeWithoutCenter = '',
    String? pin312StrokeWithoutCenter = '',
    String? pin412StrokeWithoutCenter = '',
    String? rrFlangeOuterDiameterRoughness = '',
    String? pin1SurfaceHardness = '',
    String? pin2SurfaceHardness = '',
    String? pin3SurfaceHardness = '',
    String? pin4SurfaceHardness = '',
    String? journal1SurfaceHardness = '',
    String? journal2SurfaceHardness = '',
    String? journal3SurfaceHardness = '',
    String? journal4SurfaceHardness = '',
    String? journal5SurfaceHardness = '',
    String? pinJournalGrindingCrack = '',
    String? remarksqc515l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"front_axis_machining_surface":"$frontAxisMachiningSurface",
"thrust_face_appearance":"$thrustFaceAppearance",
"pin_surface":"$pinSurface",
"pin_corner_radius":"$pinCornerRadius",
"journal_surface":"$journalSurface",
"journal_corner_radius":"$journalCornerRadius",
"rear_flange_machining_surface":"$rearFlangeMachiningSurface",
"front_axis_end_face_thrust_end_face_position_1_5l":"$frontAxisEndFaceThrustEndFacePosition15l",
"rr_flange_end_face_thrust_end_face_position_1_5l":"$rrFlangeEndFaceThrustEndFacePosition15l",
"thrust_width_1_5l_1":"$thrustWidth15l1",
"thrust_r_position_1_5l":"$thrustRPosition15l",
"journal_oil_hole_chamfer_base_distribution":"$journalOilHoleChamferBaseDistribution",
"land_width_b_w_oil_hole_chamfer_and_the_pin_sid_face_common":"$landWidthBWOilHoleChamferAndThePinSidFaceCommon",
"thrust_width_1_5l_2":"$thrustWidth15l2",
"pin_1_outer_diameter":"$pin1OuterDiameter",
"pin_2_outer_diameter":"$pin2OuterDiameter",
"pin_3_outer_diameter":"$pin3OuterDiameter",
"pin_1_roundness":"$pin1Roundness",
"pin_2_roundness":"$pin2Roundness",
"pin_3_roundness":"$pin3Roundness",
"journal_1_outer_diameter":"$journal1OuterDiameter",
"journal_2_outer_diameter":"$journal2OuterDiameter",
"journal_3_outer_diameter":"$journal3OuterDiameter",
"journal_4_outer_diameter":"$journal4OuterDiameter",
"journal_1_roundness":"$journal1Roundness",
"journal_2_roundness":"$journal2Roundness",
"journal_3_roundness":"$journal3Roundness",
"journal_4_roundness":"$journal4Roundness",
"rr_flange_outer_diameter":"$rrFlangeOuterDiameter",
"rr_flange_roundness":"$rrFlangeRoundness",
"pin_straightness_hit_without_fading":"$pinStraightnessHitWithoutFading",
"one_5l_1j_2j_and_4j":"$one5l1j2jAnd4j",
"journal_3rd_straightness":"$journal3rdStraightness",
"front_axis_outer_diameter":"$frontAxisOuterDiameter",
"front_axis_roundness":"$frontAxisRoundness",
"flyweel_mounting_boss_outer_diameter":"$flyweelMountingBossOuterDiameter",
"front_axis_end_face_plane_check":"$frontAxisEndFacePlaneCheck",
"rr_flange_end_face_plane_check":"$rrFlangeEndFacePlaneCheck",
"front_axis_outer_diameter_runout_with_center":"$frontAxisOuterDiameterRunoutWithCenter",
"journal_1_outer_diameter_runout_with_center":"$journal1OuterDiameterRunoutWithCenter",
"journal_2_outer_diameter_runout_with_center":"$journal2OuterDiameterRunoutWithCenter",
"journals_3_outer_diameter_runout_with_center":"$journals3OuterDiameterRunoutWithCenter",
"journals_4_outer_diameter_runout_with_center":"$journals4OuterDiameterRunoutWithCenter",
"rr_flange_outer_diameter_runout_with_center":"$rrFlangeOuterDiameterRunoutWithCenter",
"rr_boss_runout_with_center":"$rrBossRunoutWithCenter",
"front_axis_end_face_runout_with_center":"$frontAxisEndFaceRunoutWithCenter",

"front_shaft_end_face_perpendicualrity_with_center":"$frontShaftEndFacePerpendicualrityWithCenter",
"thrust_end_face_runout_with_center":"$thrustEndFaceRunoutWithCenter",
"thrust_end_face_perpendicularity_with_center":"$thrustEndFacePerpendicularityWithCenter",
"rr_flange_end_face_perpendicularity_with_center_and_common":"$rrFlangeEndFacePerpendicularityWithCenterAndCommon",
"pin_1_position_with_center":"$pin1PositionWithCenter",
"pin_2_position_with_center":"$pin2PositionWithCenter",
"pin_3_position_with_center":"$pin3PositionWithCenter",
"pin_1_parallelism_with_center":"$pin1ParallelismWithCenter",
"pin_2_parallelism_with_center":"$pin2ParallelismWithCenter",
"pin_3_parallelism_with_center":"$pin3ParallelismWithCenter",
"pin_1_1_2_stroke_with_center":"$pin112StrokeWithCenter",
"pin_2_1_2_stroke_with_center":"$pin212StrokeWithCenter",
"pin_3_1_2_stroke_with_center":"$pin312StrokeWithCenter",
"fr_axis_runout_without_center":"$frAxisRunoutWithoutCenter",
"rr_flange_axis_runout_without_center":"$rrFlangeAxisRunoutWithoutCenter",
"rr_flywheel_axis_od_runout_without_center":"$rrFlywheelAxisOdRunoutWithoutCenter",
"pin_1_position_without_center":"$pin1PositionWithoutCenter",
"pin_2_position_without_center":"$pin2PositionWithoutCenter",
"pin_3_position_without_center":"$pin3PositionWithoutCenter",
"pin_4_position_without_center":"$pin4PositionWithoutCenter",
"pin_1_parallelism_without_center":"$pin1ParallelismWithoutCenter",
"pin_2_parallelism_without_center":"$pin2ParallelismWithoutCenter",
"pin_3_parallelism_without_center":"$pin3ParallelismWithoutCenter",
"pin_4_parallelism_without_center":"$pin4ParallelismWithoutCenter",
"pin_1_1_2_stroke_without_center":"$pin112StrokeWithoutCenter",
"pin_2_1_2_stroke_without_center":"$pin212StrokeWithoutCenter",
"pin_3_1_2_stroke_without_center":"$pin312StrokeWithoutCenter",
"pin_4_1_2_stroke_without_center":"$pin412StrokeWithoutCenter",
"rr_flange_outer_diameter_roughness":"$rrFlangeOuterDiameterRoughness",
"pin_1_surface_hardness":"$pin1SurfaceHardness",
"pin_2_surface_hardness":"$pin2SurfaceHardness",
"pin_3_surface_hardness":"$pin3SurfaceHardness",
"pin_4_surface_hardness":"$pin4SurfaceHardness",
"journal_1_surface_hardness":"$journal1SurfaceHardness",
"journal_2_surface_hardness":"$journal2SurfaceHardness",
"journal_3_surface_hardness":"$journal3SurfaceHardness",
"journal_4_surface_hardness":"$journal4SurfaceHardness",
"journal_5_surface_hardness":"$journal5SurfaceHardness",
"pin_journal_grinding_crack":"$pinJournalGrindingCrack",
"remarksqc5_1_5l":"$remarksqc515l"

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tngaQcFiveOnePointFiveLitre',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_5_1_5l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class TclqcSevenOnePointFiveCall {
  static Future<ApiCallResponse> call({
    String? measurerName = '',
    String? shift = '',
    String? modelName = '',
    String? processName = '',
    String? partSerialName = '',
    String? cleanlinessCrankshaftWholeAppearance = '',
    String? cleanlinessFrRrFittingHole = '',
    String? oilHoleSurface = '',
    String? pinAppearance = '',
    String? journalAppearance = '',
    String? rrFlangeAppearance = '',
    String? pinOuterDiameter1 = '',
    String? pinOuterDiameter2 = '',
    String? pinOuterDiameter3 = '',
    String? pinOuterDiameterRoundnessDiameterMethod1 = '',
    String? pinOuterDiameterRoundnessDiameterMethod2 = '',
    String? pinOuterDiameterRoundnessDiameterMethod3 = '',
    String? journalOuterDiameter1 = '',
    String? journalOuterDiameter2 = '',
    String? journalOuterDiameter3 = '',
    String? journalOuterDiameter4 = '',
    String? journalOuterDiameterRoundnessDiameterMethod1 = '',
    String? journalOuterDiameterRoundnessDiameterMethod2 = '',
    String? journalOuterDiameterRoundnessDiameterMethod3 = '',
    String? journalOuterDiameterRoundnessDiameterMethod4 = '',
    String? rrFlangeOuterDiameter = '',
    String? rrFlangeRoundnessDiameterMethod = '',
    String? rrFlangeOuterDiameterRoughness = '',
    String? remarksqc715l = '',
  }) {
    final body =
        '''
{
"measurer_name":"$measurerName",
"shift":"$shift",
"model_name":"$modelName",
"process_name":"$processName",
"part_serial_name":"$partSerialName",
"cleanliness_crankshaft_whole_appearance":"$cleanlinessCrankshaftWholeAppearance",
"cleanliness_fr_rr_fitting_hole":"$cleanlinessFrRrFittingHole",
"oil_hole_surface":"$oilHoleSurface",
"pin_appearance":"$pinAppearance",
"journal_appearance":"$journalAppearance",
"rr_flange_appearance":"$rrFlangeAppearance",
"pin_outer_diameter_1":"$pinOuterDiameter1",
"pin_outer_diameter_2":"$pinOuterDiameter2",
"pin_outer_diameter_3":"$pinOuterDiameter3",
"pin_outer_diameter_roundness_diameter_method_1":"$pinOuterDiameterRoundnessDiameterMethod1",
"pin_outer_diameter_roundness_diameter_method_2":"$pinOuterDiameterRoundnessDiameterMethod2",
"pin_outer_diameter_roundness_diameter_method_3":"$pinOuterDiameterRoundnessDiameterMethod3",
"journal_outer_diameter_1":"$journalOuterDiameter1",
"journal_outer_diameter_2":"$journalOuterDiameter2",
"journal_outer_diameter_3":"$journalOuterDiameter3",
"journal_outer_diameter_4":"$journalOuterDiameter4",
"journal_outer_diameter_roundness_diameter_method_1":"$journalOuterDiameterRoundnessDiameterMethod1",
"journal_outer_diameter_roundness_diameter_method_2":"$journalOuterDiameterRoundnessDiameterMethod2",
"journal_outer_diameter_roundness_diameter_method_3":"$journalOuterDiameterRoundnessDiameterMethod3",
"journal_outer_diameter_roundness_diameter_method_4":"$journalOuterDiameterRoundnessDiameterMethod4",
"rr_flange_outer_diameter":"$rrFlangeOuterDiameter",
"rr_flange_roundness_diameter_method":"$rrFlangeRoundnessDiameterMethod",
"rr_flange_outer_diameter_roughness":"$rrFlangeOuterDiameterRoughness",
"remarksqc7_1_5l":"$remarksqc715l"


}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tclqcSevenOnePointFive',
      apiUrl: 'http://10.82.126.73:3060/tnga_c_7_1_5l',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}

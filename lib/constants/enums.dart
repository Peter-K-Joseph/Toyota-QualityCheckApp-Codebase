// ignore_for_file: constant_identifier_names

enum EngineVariant { TwoLitre, OneHalfLitre, TwoLitreC, TwoLitreH, NULL }

enum CheckSheet { Regular, Unique, NULL }

enum SystemVariant { HeadLine, CrankLine, BlockLine, NULL }

enum Shift { White, Yellow, Blue, NULL }

enum ProcessName { P1, P2, P3, P4, P5, P6, NULL }

extension EngineVariantExtension on EngineVariant {
  String get getVariant {
    switch (this) {
      case EngineVariant.TwoLitre:
        return '2 Litre';
      case EngineVariant.OneHalfLitre:
        return '1.5 Litre';
      case EngineVariant.TwoLitreC:
        return '2 Litre Conventional';
      case EngineVariant.TwoLitreH:
        return '2 Litre Hybrid';
      default:
        return 'null';
    }
  }
}

extension CheckSheetExtension on CheckSheet {
  String get getVariant {
    switch (this) {
      case CheckSheet.Regular:
        return 'Regular';
      case CheckSheet.Unique:
        return 'Unique';
      default:
        return 'null';
    }
  }
}

extension SystemVariantExtension on SystemVariant {
  String get getVariant {
    switch (this) {
      case SystemVariant.HeadLine:
        return 'Head Line';
      case SystemVariant.CrankLine:
        return 'Crank Line';
      case SystemVariant.BlockLine:
        return 'Block Line';
      default:
        return 'null';
    }
  }
}

extension ShiftExtension on Shift {
  String get getShift {
    switch (this) {
      case Shift.Blue:
        return 'Blue Shift';
      case Shift.White:
        return 'White Shift';
      case Shift.Yellow:
        return 'Yellow Shift';
      default:
        return 'null';
    }
  }
}

extension ProcessNameExtension on ProcessName {
  String get getProcessName {
    switch (this) {
      case ProcessName.P1:
        return 'Process 1';
      case ProcessName.P2:
        return 'Process 2';
      case ProcessName.P3:
        return 'Process 3';
      case ProcessName.P4:
        return 'Process 4';
      case ProcessName.P5:
        return 'Process 5';
      case ProcessName.P6:
        return 'Process 6';
      default:
        return 'null';
    }
  }
}

enum InspectionDetailBoxType { Text, Dropdown }

enum MeasuredItemCheck { NULL, OK, CRITICAL, NOTGOOD }

extension MeasuredItemCheckExtension on MeasuredItemCheck {
  int get getCheck {
    switch (this) {
      case MeasuredItemCheck.OK:
        return 0;
      case MeasuredItemCheck.CRITICAL:
        return 1;
      case MeasuredItemCheck.NOTGOOD:
        return 2;
      default:
        return -1;
    }
  }
}

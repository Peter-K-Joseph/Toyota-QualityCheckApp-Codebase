enum EngineVariant { TwoLitre, OneHalfLitre }

extension EngineVariantExtension on EngineVariant {
  String get getVariant {
    switch (this) {
      case EngineVariant.TwoLitre:
        return '2 Litre';
      case EngineVariant.OneHalfLitre:
        return '1.5 Litre';
      default:
        return '1.5 Litre';
    }
  }
}

enum InspectionDetailBoxType { Text, Dropdown }

enum MeasuredItemCheck { NULL, OK, CRITICAL, NOTGOOD }

extension MeasuredItemCheckExtension on MeasuredItemCheck {
  String get getCheck {
    switch (this) {
      case MeasuredItemCheck.OK:
        return 'O';
      case MeasuredItemCheck.CRITICAL:
        return '△';
      case MeasuredItemCheck.NOTGOOD:
        return 'X';
      default:
        return 'O';
    }
  }
}

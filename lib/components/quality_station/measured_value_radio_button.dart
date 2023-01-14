import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/callbacks.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/constants/size.dart';

class MeasuredItemRadioButtonField extends StatefulWidget {
  const MeasuredItemRadioButtonField(
      {Key? key, this.callbackvalue, this.assignedValue})
      : super(key: key);
  final String? assignedValue;
  final StringCallback? callbackvalue;

  @override
  State<MeasuredItemRadioButtonField> createState() =>
      _MeasuredItemRadioButtonFieldState();
}

class _MeasuredItemRadioButtonFieldState
    extends State<MeasuredItemRadioButtonField> {
  late MeasuredItemCheck radiovalue;
  @override
  void initState() {
    super.initState();
    if (widget.assignedValue != null) {
      if (widget.assignedValue == MeasuredItemCheck.OK.getCheck) {
        radiovalue = MeasuredItemCheck.OK;
      } else if (widget.assignedValue == MeasuredItemCheck.CRITICAL.getCheck) {
        radiovalue = MeasuredItemCheck.CRITICAL;
      } else if (widget.assignedValue == MeasuredItemCheck.NOTGOOD.getCheck) {
        radiovalue = MeasuredItemCheck.NOTGOOD;
      }
    } else {
      radiovalue = MeasuredItemCheck.NULL;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormField<MeasuredItemCheck>(
      validator: (value) {
        if (value == null) {
          return 'Please select a radio button';
        }
        return null;
      },
      builder: (state) {
        return Material(
          color: Colors.transparent,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: IgnorePointer(
            ignoring: widget.assignedValue != null ? true : false,
            child: Container(
                width: sysWidth / 4,
                height: sysHeight * 0.1,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: radiovalue == MeasuredItemCheck.NULL
                        ? const Color.fromARGB(255, 246, 131, 131)
                        : CustomTheme.of(context).secondaryText,
                    width: 3,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Radio(
                              activeColor: Colors.green,
                              value: MeasuredItemCheck.OK,
                              groupValue: radiovalue,
                              onChanged: (MeasuredItemCheck? v) {
                                state.didChange(v);
                                radiovalue = MeasuredItemCheck.OK;
                                widget.callbackvalue!(
                                    MeasuredItemCheck.OK.getCheck);
                                setState(() {});
                              }),
                          Text(
                            'OK',
                            style: CustomTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: CustomTheme.of(context).secondaryText,
                                  fontSize: 14,
                                ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Radio(
                              activeColor: Colors.amber,
                              value: MeasuredItemCheck.CRITICAL,
                              groupValue: radiovalue,
                              onChanged: (MeasuredItemCheck? v) {
                                state.didChange(v);
                                radiovalue = MeasuredItemCheck.CRITICAL;
                                widget.callbackvalue!(
                                    MeasuredItemCheck.CRITICAL.getCheck);

                                setState(() {});
                              }),
                          Text(
                            'CR',
                            style: CustomTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: CustomTheme.of(context).secondaryText,
                                  fontSize: 14,
                                ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Radio(
                              activeColor: Colors.red,
                              value: MeasuredItemCheck.NOTGOOD,
                              groupValue: radiovalue,
                              onChanged: (MeasuredItemCheck? v) {
                                state.didChange(v);
                                radiovalue = MeasuredItemCheck.NOTGOOD;
                                widget.callbackvalue!(
                                    MeasuredItemCheck.NOTGOOD.getCheck);

                                setState(() {});
                              }),
                          Text(
                            'NG',
                            style: CustomTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: CustomTheme.of(context).secondaryText,
                                  fontSize: 14,
                                ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/callbacks.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/constants/size.dart';

class MeasuredItemRadioButtonField extends StatefulWidget {
  const MeasuredItemRadioButtonField({Key? key, required this.value})
      : super(key: key);

  final StringCallback value;

  @override
  State<MeasuredItemRadioButtonField> createState() =>
      _MeasuredItemRadioButtonFieldState();
}

class _MeasuredItemRadioButtonFieldState
    extends State<MeasuredItemRadioButtonField> {
  MeasuredItemCheck value = MeasuredItemCheck.OK;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
          width: sysWidth / 4,
          height: sysHeight * 0.1,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: CustomTheme.of(context).secondaryText,
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
                        groupValue: value,
                        onChanged: (v) {
                          value = MeasuredItemCheck.OK;
                          widget.value(MeasuredItemCheck.OK.getCheck);
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
                        groupValue: value,
                        onChanged: (v) {
                          value = MeasuredItemCheck.CRITICAL;
                          widget.value(MeasuredItemCheck.CRITICAL.getCheck);

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
                        groupValue: value,
                        onChanged: (v) {
                          value = MeasuredItemCheck.NOTGOOD;
                          widget.value(MeasuredItemCheck.NOTGOOD.getCheck);

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
    );
  }
}

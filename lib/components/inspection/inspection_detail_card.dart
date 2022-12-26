import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/dropdown_component.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/constants/size.dart';

class InspectionDetailBox extends StatelessWidget {
  final InspectionDetailBoxType? boxType;
  final String title;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  final List<String>? options;
  final String? hintText;
  const InspectionDetailBox(
      {Key? key,
      this.boxType,
      required this.title,
      this.controller,
      this.onChanged,
      this.options,
      this.hintText})
      : super(key: key);

  Widget renderInspectionBox(BuildContext context) {
    if (boxType == InspectionDetailBoxType.Text || boxType == null) {
      return Material(
        color: Colors.transparent,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: sysWidth / 4,
          height: 80,
          decoration: BoxDecoration(
            color: CustomTheme.of(context).secondaryColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
          ),
          alignment: const AlignmentDirectional(0, 0.05),
          child: TextFormField(
            controller: controller,
            obscureText: false,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              hintText: hintText ?? 'Enter Text',
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
            ),
            style: CustomTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                ),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Field is required';
              }

              return null;
            },
          ),
        ),
      );
    } else {
      return Material(
        color: Colors.transparent,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
            height: 80,
            width: sysWidth / 4,
            decoration: BoxDecoration(
              color: CustomTheme.of(context).secondaryColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
            ),
            alignment: const AlignmentDirectional(0, 0.05),
            child: CustomDropDown<String>(
              options: options!,
              onChanged: onChanged ??
                  (val) {
                    controller?.text = val!;
                  },
              textStyle: CustomTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: CustomTheme.of(context).primaryBackground,
                    fontSize: 24,
                  ),
              hintText: hintText ?? 'Enter Text',
              fillColor: CustomTheme.of(context).secondaryColor,
              elevation: 2,
              borderColor: Colors.transparent,
              borderWidth: 0,
              borderRadius: 0,
              margin: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
              hidesUnderline: true,
            )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: sysWidth / 3,
          decoration: BoxDecoration(
            // color: const Color(0x002A2A2D),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '$title :',
            textAlign: TextAlign.start,
            style: CustomTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  color: CustomTheme.of(context).secondaryText,
                  fontSize: 28,
                ),
          ),
        ),
        Expanded(child: renderInspectionBox(context))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/size.dart';

class QualityStationChooseCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final dynamic Function() onPressed;
  const QualityStationChooseCard(
      {Key? key,
      required this.icon,
      required this.onPressed,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Material(
        color: Colors.transparent,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: sysHeight * 0.3,
          height: sysHeight * 0.3,
          decoration: BoxDecoration(
            color: const Color(0xB239D2C0),
            boxShadow: const [
              BoxShadow(
                color: Color(0x87FFFFFF),
              )
            ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
          ),
          child: CustomButtonWidget(
            onPressed: onPressed,
            // onPressed: () async {
            //   await Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>
            //           Cranklineqc115LWidget(
            //         variant: widget.variant,
            //         shift: widget.shift,
            //         processname: widget.processno,
            //         partserialno: widget.partserialno,
            //         measurername: widget.measurername,
            //       ),
            //     ),
            //   );
            // },
            text: title,
            icon: Icon(
              icon,
              size: 40,
            ),
            options: CustomButtonOptions(
              width: 130,
              height: 40,
              color: const Color(0x00E0E3E7),
              textStyle: CustomTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 32,
                  ),
              elevation: 5,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}

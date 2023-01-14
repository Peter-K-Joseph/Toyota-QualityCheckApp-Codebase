import 'package:flutter/material.dart';
import 'package:quality_system/components/custom_button_component.dart';
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
    return Container(
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
        buttonStyle: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: onPressed,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        text: title,
        icon: Icon(
          icon,
          size: 40,
        ),
      ),
    );
  }
}

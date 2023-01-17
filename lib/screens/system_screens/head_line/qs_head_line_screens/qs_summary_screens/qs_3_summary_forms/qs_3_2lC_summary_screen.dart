import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/components/quality_station/measured_value_radio_button.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/components/quality_station/header_text_widget.dart';
import 'package:quality_system/controllers/system_controllers/headline_controllers/qs_3_controllers/qs_3_2C_controller.dart';

class QS3HeadLine2LitreConventionalSummaryScreen extends StatelessWidget {
  QS3HeadLine2LitreConventionalSummaryScreen(
      {Key? key,
      required this.variant,
      required this.shift,
      required this.processname,
      required this.partserialno,
      required this.measurername,
      required this.checkSheet})
      : super(key: key);

  final String variant;
  final String shift;
  final String processname;
  final String partserialno;
  final String measurername;
  final String checkSheet;

  final controller = Get.find<HeadLineQS32CController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: controller.scaffoldKey,
      appBar: AppBar(
        backgroundColor: CustomTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Head Line - Quality Station 3',
          style: CustomTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: HeaderTitleWidget(
                        title: 'Measurer\'s Name :',
                        subtitle: measurername,
                      ),
                    ),
                    Expanded(
                        child: HeaderTitleWidget(
                      title: 'Shift :',
                      subtitle: shift,
                    )),
                    Expanded(
                        child: HeaderTitleWidget(
                      title: 'Variant :',
                      subtitle: variant,
                    )),
                    Expanded(
                      child: HeaderTitleWidget(
                        title: 'Process Name :',
                        subtitle: processname,
                      ),
                    ),
                    Expanded(
                      child: HeaderTitleWidget(
                        title: 'Part Serial No. :',
                        subtitle: partserialno,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: sysWidth,
                  height: 120,
                  child: Row(
                    children: [
                      const BlockFormHeaderComponent(
                          height: 120,
                          title: 'Sl.no',
                          color: Color(0xFF39D2C0)),
                      const Expanded(
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            height: 120,
                            title: 'Class',
                            color: Color(0xFF39D2C0)),
                      ),
                      const Expanded(
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            height: 120,
                            title: 'Measured Items',
                            color: Color(0xFF39D2C0)),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const BlockFormHeaderComponent(
                                width: 200,
                                height: 60,
                                title: 'No. of Positions',
                                color: Color(0xFF39D2C0)),
                            Row(
                              children: const [
                                Expanded(
                                  child: BlockFormHeaderComponent(
                                      height: 60,
                                      title: '1.5 L',
                                      color: Color(0xFF39D2C0)),
                                ),
                                Expanded(
                                  child: BlockFormHeaderComponent(
                                      height: 60,
                                      title: '2 L',
                                      color: Color(0xFF39D2C0)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            height: 120,
                            title: 'Gauge No.',
                            color: Color(0xFF39D2C0)),
                      ),
                      const Expanded(
                        flex: 1,
                        child: BlockFormHeaderComponent(
                            height: 120,
                            title: 'Action Point',
                            color: Color(0xFFEEC060)),
                      ),
                      BlockFormHeaderComponent(
                          height: 120,
                          width: sysWidth / 4,
                          title: 'Measured Value',
                          color: const Color(0xFF39D253)),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Form(
                      // key: controller.formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm1),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm2),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm3),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm4),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm5),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm6),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm7),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm8),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm9),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm10),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm11),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm12),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm13),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm14),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm15),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm16),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm17),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm18),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm19),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm20),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm21),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm22),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm23),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm24),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm25),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm26),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm27),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm28),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm29),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm30),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm31),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm32),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm33),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm34),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm35),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm36),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm37),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm38),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm39),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm40),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm41),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm42),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm43),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm44),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm45),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm46),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm47),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm48),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm49),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm50),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm51),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm52),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm53),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm54),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm55),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm56),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm57),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm58),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm59),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm60),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm61),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm62),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm63),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm64),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm65),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm66),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm67),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm68),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm69),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm70),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm71),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm72),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm73),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm74),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm75),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm76),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm77),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm78),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm79),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm80),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm81),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm82),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm83),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm84),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm85),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm86),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm87),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm88),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm89),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm90),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm91),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm92),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm93),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm94),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm95),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm96),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm97),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm98),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm99),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm100),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm101),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm102),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm103),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm104),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm105),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm106),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm107),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm108),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm109),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm110),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm111),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm112),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm113),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm114),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm115),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm116),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm117),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm118),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm119),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm120),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm121),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm122),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm123),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm124),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm125),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm126),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm127),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm128),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm129),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm130),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm131),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm132),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm133),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm134),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm135),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm136),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm137),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm138),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm139),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm140),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm141),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm142),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm143),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm144),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm145),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm146),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm147),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm148),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm149),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm150),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm151),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm152),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm153),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm154),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm155),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm156),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm157),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm158),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm159),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm160),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm161),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm162),
                          MeasuredItemRadioButtonField(
                              assignedValue: controller.pm163),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 60,
                  width: sysWidth,
                  child: CustomButtonWidget(
                    onPressed: () {},
                    text: 'Summary',
                    icon: Icon(
                      Icons.list,
                      color: CustomTheme.of(context).secondaryText,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/enums.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/screens/variant_select_screen/variant_associate_screen.dart';

class VariantSelectCard extends StatelessWidget {
  final String variant;
  final String image;
  const VariantSelectCard(
      {Key? key, required this.image, required this.variant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => VariantAssociateDetailScreen(
                        variant: EngineVariant.OneHalfLitre.getVariant,
                      ));
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: const Color(0x89262D34),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: SizedBox(
                    width: sysWidth * 0.4,
                    height: sysHeight * 0.7,
                    child: Stack(
                      children: [
                        Material(
                          color: Colors.white54,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Container(
                            width: sysWidth * 0.9,
                            height: sysHeight * 0.8,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      child: Container(
                                        width: sysHeight * 0.35,
                                        height: sysHeight * 0.35,
                                        decoration: BoxDecoration(
                                          color: const Color(0xAF2A2A2D),
                                          image: DecorationImage(
                                            fit: BoxFit.none,
                                            image: AssetImage(
                                              image,
                                            ),
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 3,
                                              color: Color(0x92262D34),
                                              offset: Offset(3, 3),
                                              spreadRadius: 3,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(28),
                                          shape: BoxShape.rectangle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  'TNGA | Machining',
                                  textAlign: TextAlign.start,
                                  style: CustomTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: CustomTheme.of(context)
                                            .secondaryColor,
                                        fontSize: 24,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Text(
                                  variant,
                                  textAlign: TextAlign.start,
                                  style:
                                      CustomTheme.of(context).title1.override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF262D34),
                                            fontSize: 50,
                                          ),
                                ),
                                // Column(
                                //   mainAxisSize: MainAxisSize.min,
                                //   mainAxisAlignment: MainAxisAlignment.end,
                                //   crossAxisAlignment: CrossAxisAlignment.center,
                                //   children: [
                                //     Container(
                                //       width: sysWidth * 0.28,
                                //       height: sysHeight * 0.2,
                                //       decoration: BoxDecoration(
                                //         color: const Color(0xFFEEEEEE),
                                //         boxShadow: const [
                                //           BoxShadow(
                                //             blurRadius: 3,
                                //             color: Color(0x81000000),
                                //             offset: Offset(3, 3),
                                //             spreadRadius: 3,
                                //           )
                                //         ],
                                //         borderRadius: BorderRadius.circular(50),
                                //       ),
                                //       child: CustomButtonWidget(
                                //         onPressed: () {

                                //         },
                                //         text: 'Enter',
                                //         icon: Icon(
                                //           Icons.input_rounded,
                                //           color: CustomTheme.of(context)
                                //               .secondaryColor,
                                //           size: 40,
                                //         ),
                                //         options: CustomButtonOptions(
                                //           width: double.infinity,
                                //           height: double.infinity,
                                //           color: const Color(0xCC0D0D0E),
                                //           textStyle: CustomTheme.of(context)
                                //               .subtitle2
                                //               .override(
                                //                 fontFamily: 'Poppins',
                                //                 color: CustomTheme.of(context)
                                //                     .primaryBackground,
                                //                 fontSize: 44,
                                //               ),
                                //           elevation: 7,
                                //           borderSide: BorderSide(
                                //             color: CustomTheme.of(context)
                                //                 .secondaryColor,
                                //             width: 3,
                                //           ),
                                //           borderRadius: BorderRadius.circular(50),
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

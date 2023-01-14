import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/components/background_container.dart';
import 'package:quality_system/components/custom_button_component.dart';
import 'package:quality_system/components/custom_theme_component.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/constants/styles.dart';
import 'package:quality_system/controllers/auth_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final AuthController authController = Get.put(AuthController());
  final scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: CustomTheme.of(context).primaryBackground,
      body: BackgroundSplashContainer(
        image: 'images/login_images/5305323.jpg',
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0.2),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/login_images/QC_check-1.png',
                              width: sysWidth * 0.5,
                              height: sysHeight * 0.6,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Form(
                            key: authController.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: sysWidth * 0.45,
                                  child: TextFormField(
                                    controller:
                                        authController.reportglController,
                                    obscureText: false,
                                    decoration: authTextFieldStyle.copyWith(
                                      hintText: 'Report Group Leader',
                                      prefixIcon: const Icon(
                                        Icons.security,
                                        color: Colors.black,
                                        size: 26,
                                      ),
                                    ),
                                    style: CustomTheme.of(context)
                                        .bodyText1
                                        .override(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width: sysWidth * 0.45,
                                  child: TextFormField(
                                    controller:
                                        authController.userNameController,
                                    obscureText: false,
                                    decoration: authTextFieldStyle,
                                    style: CustomTheme.of(context)
                                        .bodyText1
                                        .override(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width: sysWidth * 0.45,
                                  child: TextFormField(
                                    controller:
                                        authController.employeeController,
                                    obscureText: false,
                                    decoration: authTextFieldStyle.copyWith(
                                      hintText: 'Employee ID',
                                      prefixIcon: const Icon(
                                        Icons.security,
                                        color: Colors.black,
                                        size: 26,
                                      ),
                                    ),
                                    style: CustomTheme.of(context)
                                        .bodyText1
                                        .override(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width: sysWidth * 0.45,
                                  child: Obx(() {
                                    return TextFormField(
                                      cursorColor: Colors.orange,
                                      controller:
                                          authController.passwordController,
                                      obscureText: !authController
                                          .passwordVisibility.value,
                                      decoration: authTextFieldStyle.copyWith(
                                        hintText: 'Password:',
                                        prefixIcon: const Icon(
                                          Icons.security,
                                          color: Colors.black,
                                          size: 26,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () {
                                            authController.passwordVisibility(
                                                !authController
                                                    .passwordVisibility.value);
                                          },
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            authController
                                                    .passwordVisibility.value
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: const Color(0xFF757575),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: CustomTheme.of(context)
                                          .bodyText1
                                          .override(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          CustomButtonWidget(
                            width: 200,
                            onPressed: () {
                              authController.registerUser();
                            },
                            text: 'Register',
                            icon: Icon(
                              Icons.login,
                              color: CustomTheme.of(context).primaryBtnText,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(-0.98, 0.75),
                child: Text(
                  'Developed by:',
                  style: CustomTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.56, -0.74),
                child: Image.asset(
                  'images/login_images/company_logo_1.png',
                  width: 200,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.98, 0.98),
                child: Image.asset(
                  'images/login_images/logo.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

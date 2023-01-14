import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_system/screens/system_screens/system_select_screen.dart';
import 'package:quality_system/services/http_services.dart';

class AuthController extends GetxController {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final reportglController = TextEditingController();
  final employeeController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldLoginKey = GlobalKey<ScaffoldState>();
  final scaffoldRegisterKey = GlobalKey<ScaffoldState>();

  final httpService = HTTPServices();

  Rx<bool> passwordVisibility = true.obs;
  Rx<bool> loading = false.obs;

  Future<void> registerUser() async {
    loading(true);

    final result = await httpService.postRequest(data: {
      'username': userNameController.text,
      'password': passwordController.text,
      'report_Gl': reportglController.text,
      'empID': reportglController.text
    }, endpoint: 'register');

    print(result);
    final data = jsonDecode(result.body);
    Get.rawSnackbar(message: data['message']);
    if (result.statusCode == 201) Get.to(() => SystemChooseScreen());
    loading(false);
  }

  void loginUser() {
    loading(true);

    httpService.postRequest(data: {
      'username': userNameController.text,
      'password': passwordController.text
    }, endpoint: 'login').then((value) {
      print(value.body);

      final data = jsonDecode(value.body);
      Get.rawSnackbar(message: data['message']);
      if (value.statusCode == 200) Get.to(() => SystemChooseScreen());
    }).catchError((er) {
      Get.rawSnackbar(message: er);
    });

    loading(false);
  }
}

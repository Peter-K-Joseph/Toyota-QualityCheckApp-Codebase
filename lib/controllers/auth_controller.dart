import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final reportglController = TextEditingController();
  final employeeController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldLoginKey = GlobalKey<ScaffoldState>();
  final scaffoldRegisterKey = GlobalKey<ScaffoldState>();

  Rx<bool> passwordVisibility = true.obs;
}

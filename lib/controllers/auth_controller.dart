import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Rx<bool> passwordVisibility = true.obs;
}

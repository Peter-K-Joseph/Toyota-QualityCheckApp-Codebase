import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssociateController extends GetxController {
  String processnameValue = '';
  String shiftValue = '';
  TextEditingController partserialnoController = TextEditingController();
  TextEditingController measurernameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    partserialnoController.dispose();
    measurernameController.dispose();
    super.dispose();
  }
}

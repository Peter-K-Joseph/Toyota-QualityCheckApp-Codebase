import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QualityStationFormsController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String test = 'O';

  TextEditingController? mv00Controller;
  TextEditingController? mv01Controller;
  TextEditingController? mv02Controller;
  TextEditingController? mv03Controller;
  TextEditingController? mv04Controller;
  TextEditingController? mv0501Controller;
  TextEditingController? mv0502Controller;
  TextEditingController? mv0503Controller;
  TextEditingController? mv06Controller;
  TextEditingController? mv07Controller;
  TextEditingController? mv08Controller;
  TextEditingController? mv09Controller;
  TextEditingController? mv10Controller;
  TextEditingController? mv11Controller;
  TextEditingController? mv12Controller;
  TextEditingController? mv13Controller;
  TextEditingController? mv14Controller;
  TextEditingController? mv15Controller;
  TextEditingController? mv16Controller;
  TextEditingController? mv17Controller;
  TextEditingController? mv18Controller;
  TextEditingController? mv1901Controller;
  TextEditingController? mv1902Controller;
  TextEditingController? mv1903Controller;
  TextEditingController? mv20Controller;
  TextEditingController? mv21Controller;
  TextEditingController? mv22Controller;
  TextEditingController? mv23Controller;
  TextEditingController? mv24Controller1;
  TextEditingController? mv24Controller2;
  TextEditingController? mv25rController;

  @override
  void onInit() {
    super.onInit();
    mv00Controller = TextEditingController();
    mv01Controller = TextEditingController();
    mv02Controller = TextEditingController();
    mv03Controller = TextEditingController();
    mv04Controller = TextEditingController();
    mv0501Controller = TextEditingController();
    mv0502Controller = TextEditingController();
    mv0503Controller = TextEditingController();
    mv06Controller = TextEditingController();
    mv07Controller = TextEditingController();
    mv08Controller = TextEditingController();
    mv09Controller = TextEditingController();
    mv10Controller = TextEditingController();
    mv11Controller = TextEditingController();
    mv12Controller = TextEditingController();
    mv13Controller = TextEditingController();
    mv14Controller = TextEditingController();
    mv15Controller = TextEditingController();
    mv16Controller = TextEditingController();
    mv17Controller = TextEditingController();
    mv18Controller = TextEditingController();
    mv1901Controller = TextEditingController();
    mv1902Controller = TextEditingController();
    mv1903Controller = TextEditingController();
    mv20Controller = TextEditingController();
    mv21Controller = TextEditingController();
    mv22Controller = TextEditingController();
    mv23Controller = TextEditingController();
    mv24Controller1 = TextEditingController();
    mv24Controller2 = TextEditingController();
    mv25rController = TextEditingController();
  }

  @override
  void dispose() {
    mv00Controller?.dispose();
    mv01Controller?.dispose();
    mv02Controller?.dispose();
    mv03Controller?.dispose();
    mv04Controller?.dispose();
    mv0501Controller?.dispose();
    mv0502Controller?.dispose();
    mv0503Controller?.dispose();
    mv06Controller?.dispose();
    mv07Controller?.dispose();
    mv08Controller?.dispose();
    mv09Controller?.dispose();
    mv10Controller?.dispose();
    mv11Controller?.dispose();
    mv12Controller?.dispose();
    mv13Controller?.dispose();
    mv14Controller?.dispose();
    mv15Controller?.dispose();
    mv16Controller?.dispose();
    mv17Controller?.dispose();
    mv18Controller?.dispose();
    mv1901Controller?.dispose();
    mv1902Controller?.dispose();
    mv1903Controller?.dispose();
    mv20Controller?.dispose();
    mv21Controller?.dispose();
    mv22Controller?.dispose();
    mv23Controller?.dispose();
    mv24Controller1?.dispose();
    mv24Controller2?.dispose();
    mv25rController?.dispose();
    super.dispose();
  }
}

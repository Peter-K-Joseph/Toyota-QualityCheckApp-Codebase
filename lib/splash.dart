import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:quality_system/constants/size.dart';
import 'package:quality_system/screens/auth_screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future splashLoader() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(() => LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: splashLoader(),
        builder: (context, snapshot) {
          return Stack(
            children: [
              Image.asset(
                'images/login_images/QC_check-logos.jpeg',
                fit: BoxFit.fill,
                height: sysHeight,
                width: sysWidth,
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: SpinKitRotatingCircle(color: Colors.white),
              )
            ],
          );
        },
      ),
    );
  }
}

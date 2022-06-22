import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    _nextRoute();
    super.initState();
  }

  void _nextRoute() async {
    await 3.delay();
    Get.offAllNamed(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/bluetooth.png',
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}

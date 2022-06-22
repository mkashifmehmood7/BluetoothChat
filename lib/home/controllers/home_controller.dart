import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class HomeController extends GetxController {
  TextEditingController fieldController = TextEditingController();
  RxBool onAttach = false.obs;

  void onAttachFile() {
    onAttach.value = !onAttach.value;
  }

  void onAddPerson() {
    Get.toNamed(Routes.contacts);
  }

  void onGallery() {}

  void onCamera() {}
}

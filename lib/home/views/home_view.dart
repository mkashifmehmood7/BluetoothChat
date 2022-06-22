import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.blue,
      ),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100, 56),
          child: SafeArea(
            child: Container(
              height: 56,
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/bluetooth_outline.png',
                    height: 40,
                    width: 40,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'GChat',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Not Connected',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => controller.onAttachFile(),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.attach_file,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.my_location_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => controller.onAddPerson(),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.person_add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            const Center(
              child: Text(''), //Replace this Widget with your concerned UI
            ),
            Obx(
              () => Visibility(
                visible: controller.onAttach.value,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () => controller.onCamera(),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue.shade800,
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Camera',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => controller.onGallery(),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue.shade800,
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Icon(
                                Icons.photo,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Gallery',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomSheet: Container(
          height: 50,
          color: Colors.grey.shade200,
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey.shade600,
                    size: 35,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  controller: controller.fieldController,
                  cursorColor: Colors.blue,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.send,
                    color: Colors.grey.shade600,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

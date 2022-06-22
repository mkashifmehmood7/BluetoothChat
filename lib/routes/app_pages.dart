import 'package:bluetooth_chat/contacts/bindings/contacts_binding.dart';
import 'package:bluetooth_chat/contacts/views/contacts_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../home/bindings/home_binding.dart';
import '../home/views/home_view.dart';
import '../splash/splash_view.dart';

part 'app_routes.dart';

GlobalKey<ScaffoldState> scaffoldGlobalKey = GlobalKey<ScaffoldState>();

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.contacts,
      page: () => const ContactsView(),
      binding: ContactsBinding(),
    ),
  ];
}

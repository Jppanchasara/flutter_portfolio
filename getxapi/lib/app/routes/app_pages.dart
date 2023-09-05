// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:get/get.dart';
import 'package:getxapi/app/modules/home/views/UserView.dart';
import 'package:getxapi/app/modules/home/views/makeupview.dart';
import 'package:getxapi/app/modules/home/views/mobileView.dart';

import '../modules/home/bindings/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MOBILE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => UserView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MOBILE,
      page: () => MobileView(),
      binding: HomeBinding(),
    ),
    
  ];
}

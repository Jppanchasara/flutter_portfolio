// ignore_for_file: unused_import, non_constant_identifier_names

import 'dart:developer';


import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getxapi/app/modules/home/model/makeupmodel.dart';
import 'package:getxapi/app/modules/home/model/mobilemodel.dart';
import 'package:getxapi/app/modules/home/model/usermodel.dart';
import 'package:getxapi/app/modules/home/services/makeupservices.dart';

class HomeController extends GetxController {
  Rx<bool> isLoading = true.obs;

  RxList<MakeupModel> productList = <MakeupModel>[].obs;
  final UserList = UserModel().obs;

  MobileModel? MobileList;

  

  @override
  void onInit() {
    fetchProducts();
    fetctUserdata();
    fetchMobileData();

    super.onInit();
  }
  

  void fetchMobileData() {
    isLoading.value = true;
    API
        .fetchMobileapi()
        .then((value) => {
              isLoading.value = false,
              // print('********************************************' +
              //     value!.limit.toString()),
              MobileList = value
            })
        .onError((error, stackTrace) => {});
  }

  void fetctUserdata() {
    API
        .fetchUserapi()
        .then((value) => {
              // print(
              //     '***********${value!.data![0].firstName.toString()}***************'),
              UserList.value = value!
            })
        .onError((error, stackTrace) => {});
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await API.fetchProducts();
      if (products != null) {
        productList.value = products;
        // print('-------${productList.length}------------- ');
      }
    } finally {
      isLoading(false);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

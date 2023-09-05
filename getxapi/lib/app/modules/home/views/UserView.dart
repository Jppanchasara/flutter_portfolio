// ignore_for_file: invalid_use_of_protected_member, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxapi/app/modules/home/controllers/home_controller.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final HomeController homeController = Get.put(HomeController());
 

  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Text('mobile data'),
          ),
          body: Obx(() => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'page :' + homeController.UserList.value.page.toString()),
                    Text('total :' +
                        homeController.UserList.value.total.toString()),
                    Text('totalpage :' +
                        homeController.UserList.value.totalPages.toString()),
                    Expanded(
                      child: ListView.builder(
                        itemCount: homeController.UserList.value.data!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    reuseble(
                                        'Id :',
                                        homeController
                                            .UserList.value.data![index].id
                                            .toString()),
                                    reuseble(
                                        'Email :',
                                        homeController
                                            .UserList.value.data![index].email
                                            .toString()),
                                    reuseble(
                                        'First Name :',
                                        homeController
                                            .UserList.value.data![index].firstName
                                            .toString()),
                                    reuseble(
                                        'Last Name :',
                                        homeController
                                            .UserList.value.data![index].lastName
                                            .toString()),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ))
    );
  }
}

Widget reuseble(String title, String value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      Text(
        value,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      )
    ],
  );
}

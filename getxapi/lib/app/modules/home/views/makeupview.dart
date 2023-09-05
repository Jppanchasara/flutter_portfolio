// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getxapi/app/modules/home/controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController homeController = Get.put(HomeController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            
            Expanded(
              child: Obx(() => ListView.builder(
                  itemCount: homeController.productList.length,
                  itemBuilder: (context, index) {
                    if (homeController.isLoading.value) {
                      return CircularProgressIndicator();
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 350,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Center(
                                    child: SizedBox(
                                        height: 150,
                                        child: Image.network(homeController
                                            .productList[index].image)),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  homeController.productList[index].title
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            homeController
                                                .productList[index].rating.rate
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "\$" +
                                            homeController
                                                .productList[index].price
                                                .toString(),
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 2,
                                ),
                                Text(homeController
                                    .productList[index].description
                                    .toString())
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  })),
            )
          ],
        ));
  }
}

// ignore_for_file: implementation_imports, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getxapi/app/modules/home/bindings/home_binding.dart';
import 'package:getxapi/app/modules/home/controllers/home_controller.dart';
import 'package:getxapi/app/modules/home/model/mobilemodel.dart';
import 'package:getxapi/app/modules/home/views/UserView.dart';
import 'package:getxapi/app/modules/home/views/mobile/MobiledetailScreen.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Data'),
      ),
      body: Obx(
        () => homeController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: homeController.MobileList!.products!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Reuseblecrad(
                        product: homeController.MobileList!.products![index]),
                  );
                },
              ),
      ),
    );
  }
}

class Reuseblecrad extends StatelessWidget {
  final Product product;
  Reuseblecrad({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MobileDetailSceren(product: product)));
      },
      child: Wrap(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: NetworkImage(
                          //AutofillHints.birthdayMonth
                          product.thumbnail.toString(),
                        ),
                        fit: BoxFit.fill,
                      ),
                      //border: Border.all(color: Colors.grey, width: 5),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      right: 15,
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                product.brand.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      )),
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title.toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(product.description.toString())
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

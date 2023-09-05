// ignore_for_file: unused_import, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getxapi/app/modules/home/model/makeupmodel.dart';
import 'package:getxapi/app/modules/home/model/mobilemodel.dart';
import 'package:getxapi/app/modules/home/model/usermodel.dart';
import 'package:http/http.dart' as http;

class API {
  static var client = http.Client();

  static Future<List<MakeupModel>?> fetchProducts() async {
    String urlp = "https://fakestoreapi.com/products/category/jewelery";
    var response = await client.get(Uri.parse(urlp));
    print(response);
    if (response.statusCode == 200) {
      return makeupModelFromJson(response.body);
    } else {
      return null;
    }
  }

  static Future<UserModel?> fetchUserapi() async {
    String url = 'https://reqres.in/api/users?page=2';
    var response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  static Future<MobileModel?> fetchMobileapi() async {
    String urlm = 'https://dummyjson.com/products';
    var response = await client.get(Uri.parse(urlm));
    if (response.statusCode == 200) {
      var results = MobileModel.fromJson(jsonDecode(response.body));
      print(response.body);
      return results;
    } else {
      return null;
    }
  }
}

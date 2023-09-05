// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:velocity_x/velocity_x.dart';

import '../res/appcolor.dart';
import '../res/checkmobile.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
   Color i = Colors.purple;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: Text(
            'My Skills',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: DisplayFunction.isDark
                  ? AppColors.color[0]["textcolor"]
                  : AppColors.color[1]["textcolor"],
            ),
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * .9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
              color: DisplayFunction.isDark
                  ? AppColors.color[0]["maincontainercolor"]
                  : AppColors.color[1]["maincontainercolor"],
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Programming Langauges",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: DisplayFunction.isDark
                        ? AppColors.color[0]["textcolor"]
                        : AppColors.color[1]["textcolor"],
                  ),
                ),
                Divider(),
                Wrap(
                  spacing: 10,
                  children: [
                    Chip(
                      backgroundColor: DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
                      label: Text("Dart"),
                      labelStyle: TextStyle(color:i ),
                      side: BorderSide(color: i),
                    ),
                    Chip(
                      backgroundColor: DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
                      label: Text("Java"),
                      labelStyle: TextStyle(color:i),
                      side: BorderSide(color:i),
                    ),
                    Chip(
                      backgroundColor: DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
                      label: Text("C/C++"),
                      labelStyle: TextStyle(color:i),
                      side: BorderSide(color: i),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * .9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
              color: DisplayFunction.isDark
                  ? AppColors.color[0]["maincontainercolor"]
                  : AppColors.color[1]["maincontainercolor"],
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Developer Tools",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: DisplayFunction.isDark
                          ? AppColors.color[0]["textcolor"]
                          : AppColors.color[1]["textcolor"],
                    )),
                Divider(),
                Wrap(
                  spacing: 10,
                  children: [
                    Chip(
                      backgroundColor: DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
                      label: Text("Postman"),
                      labelStyle: TextStyle(
                        color: i,
                      ),
                      side: BorderSide(color:i),
                    ),
                    Chip(
                      backgroundColor: DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
                        label: Text("GIT"),
                        labelStyle: TextStyle(color: i),
                        side: BorderSide(
                          color: i,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * .9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
              color: DisplayFunction.isDark
                  ? AppColors.color[0]["maincontainercolor"]
                  : AppColors.color[1]["maincontainercolor"],
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Framework",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: DisplayFunction.isDark
                          ? AppColors.color[0]["textcolor"]
                          : AppColors.color[1]["textcolor"],
                    )),
                Divider(),
                Wrap(
                  spacing: 10,
                  //runSpacing: 10,
                  children: [
                    Chip(
                      backgroundColor: DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
                      label: Text("Flutter"),
                      labelStyle: TextStyle(color: i),
                      side: BorderSide(color: i),
                    ),
                    Chip(
                      backgroundColor: DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
                      label: Text("Bootstrap"),
                      labelStyle: TextStyle(color: i),
                      side: BorderSide(color: i),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

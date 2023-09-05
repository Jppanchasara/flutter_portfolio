// ignore_for_file: prefer_const_constructors, unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/utils/socialrow.dart';

import '../res/appcolor.dart';
import '../res/checkmobile.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color:DisplayFunction.isDark?AppColors.color[0]["secondarycolor"]:AppColors.color[1]["secondarycolor"],
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 12),
      child: Column(
        children: [

          SocialRow(),
          SizedBox(
            height: 12,
          ),
          Text('Jayesh Panchasara @copywrite-2002',style: TextStyle(color: DisplayFunction.isDark?AppColors.color[0]["textcolor"]:AppColors.color[1]["textcolor"]),)
        ],
      ),
    );
  }
}
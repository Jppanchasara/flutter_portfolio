import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/res/checkmobile.dart';
import 'package:portfolio/themechnage/themeModel.dart';

class AppColors {
  static List color = [
    //dark
    {
      "appbartextcolor":Colors.white,
      "primarycolor": Colors.black87, 
      "secondarycolor": Colors.black,

      //about
      "maincontainercolor":Colors.black,
      "textcolor":Colors.white,
      "cradhovercolor":Colors.white.withOpacity(0.2),
      "cardhoverbordercolor":Colors.white.withOpacity(0.8),
      "iconbackcolor":Colors.white,
      //project
      "projectcardhovercolor":Colors.black.withOpacity(0.5),
      "projectdetailcolor":Colors.white,
      "projectdetailhoveringcolor":Colors.black.withOpacity(0.9),
      //myskill
      "labelb&tcolor":Colors.purple
    
    },

    //light
    {
      "appbartextcolor":Colors.purple,
      "primarycolor": Colors.purple.shade50,
      "secondarycolor": Colors.purple.shade100,
      //about
      "maincontainercolor":Colors.white,
      "textcolor":Colors.black,
      "cradhovercolor":Colors.purple.withOpacity(0.3),
       "cardhoverbordercolor":Colors.purple.withOpacity(0.8),
       "iconbackcolor":Colors.white,
       //project
       "projectcardhovercolor":Colors.purple.withOpacity(0.4),
       "projectdetailcolor":Colors.white,
      "projectdetailhoveringcolor":Colors.purple.withOpacity(0.7),
            //myskill
      "labelb&tcolor":Colors.purple
    }
  ];
}

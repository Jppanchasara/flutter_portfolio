// ignore_for_file: prefer_const_constructors, implementation_imports, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../res/appcolor.dart';
import '../res/checkmobile.dart';

class animatedIconButton extends StatefulWidget {
  final IconData iconData;
  
  final VoidCallback onTap;

  const animatedIconButton(
      {super.key,
      required this.iconData,
      
      required this.onTap});

  @override
  State<animatedIconButton> createState() => _animatedIconButtonState();
}

class _animatedIconButtonState extends State<animatedIconButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap;
      },
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: AnimatedContainer(
      
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
                      color:  DisplayFunction.isDark?isHovering? AppColors.color[0]["projectdetailhoveringcolor"]:AppColors.color[0]["projectdetailcolor"]:isHovering?AppColors.color[1]["projectdetailhoveringcolor"]: AppColors.color[1]["projectdetailcolor"],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color:Colors.purple),),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(widget.iconData , color: DisplayFunction.isDark?isHovering? AppColors.color[0]["projectdetailcolor"]:AppColors.color[0]["projectdetailhoveringcolor"]:isHovering?AppColors.color[1]["projectdetailcolor"]: AppColors.color[1]["projectdetailhoveringcolor"],),
        ),
      ),
    );
  }
}

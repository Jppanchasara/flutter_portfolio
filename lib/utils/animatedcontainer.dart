// ignore_for_file: prefer_const_constructors, implementation_imports, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../res/appcolor.dart';
import '../res/checkmobile.dart';

class animatedContainer extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const animatedContainer(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subtitle,
      required this.onTap});

  @override
  State<animatedContainer> createState() => _animatedContainerState();
}

class _animatedContainerState extends State<animatedContainer> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: InkWell(
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
            color: DisplayFunction.isDark?isHovering? AppColors.color[0]["cradhovercolor"]:AppColors.color[0]["maincontainercolor"]:isHovering?AppColors.color[1]["cradhovercolor"]: AppColors.color[1]["maincontainercolor"],
    
            //color: isHovering?Colors.purple.withOpacity(0.2):Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: DisplayFunction.isDark?isHovering? AppColors.color[0]["cardhoverbordercolor"]:AppColors.color[0]["maincontainercolor"]:isHovering?AppColors.color[1]["cardhoverbordercolor"]: AppColors.color[1]["maincontainercolor"], )
    ),        child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FaIcon(widget.iconData),
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(widget.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,                  color: DisplayFunction.isDark?AppColors.color[0]["textcolor"]:AppColors.color[1]["textcolor"],
              ),), Text(widget.subtitle,style: TextStyle(
                    color: DisplayFunction.isDark?AppColors.color[0]["textcolor"]:AppColors.color[1]["textcolor"],
                  ),)],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


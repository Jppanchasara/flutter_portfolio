// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, implementation_imports, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/res/appcolor.dart';
import 'package:portfolio/res/checkmobile.dart';
import 'package:portfolio/utils/AnimatedContainer.dart';
import 'package:portfolio/utils/animatedIconbutton.dart';
import 'package:portfolio/utils/socialrow.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 700,
      margin: EdgeInsets.only(top: 12),
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : context.screenWidth <1600?context.screenWidth*0.3:context.screenWidth * 0.2,
        decoration: BoxDecoration(color: DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                   SizedBox(height: 100,width: 100,child: Image.network('https://media.istockphoto.com/id/1226886130/photo/3d-illustration-of-smiling-happy-man-with-laptop-sitting-in-armchair-cartoon-businessman.jpg?s=1024x1024&w=is&k=20&c=Kt68hwB6KIIw3kgvs0MQOrFvuFbHmpnJ82DlxRFRGiM=')),
              Text(
                "Jayesh",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: DisplayFunction.isDark?AppColors.color[0]["textcolor"]:AppColors.color[1]["textcolor"],
                ),
              ),
              Text(
                'I am a Flutter Developer and I am looking for dev roles across india or usa',
                style: TextStyle(
                  color: DisplayFunction.isDark?AppColors.color[0]["textcolor"]:AppColors.color[1]["textcolor"],
                ),
                textAlign: TextAlign.center,
              ),
             
              Wrap(
                spacing: 8.0,
                
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Chip(
    
                      label: Text('Flutter Developer'),
                      labelStyle: TextStyle(color: Colors.white),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Chip(
                      label: Text('Android Developer'),
                      labelStyle: TextStyle(color: Colors.white),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                 
                ],
              ),
               Divider(),
              animatedContainer(iconData:FontAwesomeIcons.githubAlt , title: 'Github', subtitle: 'Jayesh Panchasara', onTap: (){}),
              
              animatedContainer(iconData: FontAwesomeIcons.linkedin, title: 'Linkedin', subtitle: 'Jayesh Panchasara', onTap:(){}),
              
              animatedContainer(iconData: FontAwesomeIcons.facebook, title: 'Facebook' , subtitle: "jayesh Panchsara", onTap: (){}),
              

                ],
              ),
              Column(
                children: [
                  Divider(),
                  SocialRow()
                  
                ],
              )
    
            ],
          ),
        ),
      ),
    );
  }
}

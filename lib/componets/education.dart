// ignore_for_file: prefer_const_constructors, implementation_imports, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timelines/timelines.dart';

import '../res/appcolor.dart';
import '../res/checkmobile.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 700,
        margin: EdgeInsets.only(top: 12),
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : context.screenWidth <1600?context.screenWidth*0.5:context.screenWidth * 0.4,
        decoration: BoxDecoration(
          color:DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Education",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: DisplayFunction.isDark?AppColors.color[0]["textcolor"]:AppColors.color[1]["textcolor"]),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Timeline.tileBuilder(
                    
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    builder: TimelineTileBuilder.fromStyle(
                      itemCount: 4,
                      
                      contentsAlign: ContentsAlign.alternating,
                      contentsBuilder: (context, index) {
                        return Card(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('20 March 2024',style: TextStyle(fontSize: 12,color: Colors.indigo),),
                                Text('Passed 10th',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                                Text('10th grade from this particular and with 90% of marks were secured by me',style: TextStyle(fontSize: 10,color: Colors.grey.shade700),)
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

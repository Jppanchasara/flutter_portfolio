// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/animatedIconbutton.dart';
import 'package:velocity_x/velocity_x.dart';

import '../res/appcolor.dart';
import '../res/checkmobile.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  bool isHovering1 = false;
  bool isHovering2 = false;
  bool isHovering3 = false;
  bool isHovering4 = false;
  bool isHovering5 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : context.screenWidth * 0.82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color:DisplayFunction.isDark?AppColors.color[0]["maincontainercolor"]:AppColors.color[1]["maincontainercolor"],
        ),
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "My Projects",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,color: DisplayFunction.isDark?AppColors.color[0]["textcolor"]:AppColors.color[1]["textcolor"]),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            isHovering1 = value;
                          });
                        },
                        child: containerproject(isHovering1,
                            'https://images.pexels.com/photos/198192/pexels-photo-198192.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            isHovering2 = value;
                          });
                        },
                        child: containerproject(isHovering2,
                            "https://images.pexels.com/photos/198192/pexels-photo-198192.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            isHovering3 = value;
                          });
                        },
                        child: containerproject(isHovering3,
                            "https://images.pexels.com/photos/198192/pexels-photo-198192.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            isHovering4 = value;
                          });
                        },
                        child: containerproject(isHovering4,
                            "https://images.pexels.com/photos/198192/pexels-photo-198192.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      )
                    ])),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                onTap: () {
                  
                },
                onHover: (value) {
                  setState(() {
                    isHovering5 = value;
                  });
                },
                child: AnimatedContainer(
                  width: 150,
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                      color:  DisplayFunction.isDark?isHovering5? AppColors.color[0]["projectdetailhoveringcolor"]:AppColors.color[0]["projectdetailcolor"]:isHovering5?AppColors.color[1]["projectdetailhoveringcolor"]: AppColors.color[1]["projectdetailcolor"],
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                          color:  Colors.purple,width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          Text("More Project ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,
                          color: DisplayFunction.isDark?isHovering5? AppColors.color[0]["projectdetailcolor"]:AppColors.color[0]["projectdetailhoveringcolor"]:isHovering5?AppColors.color[1]["projectdetailcolor"]: AppColors.color[1]["projectdetailhoveringcolor"],),),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  containerproject(bool hovring, String path) {
    return Stack(children: [
      Container(
        height: 320,
        width: context.screenWidth < 900
            ? context.screenWidth * 0.8
            : context.screenWidth * 0.37,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(path),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      hovring
          ? Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 320,
                width: context.screenWidth < 900
                    ? context.screenWidth * 0.8
                    : context.screenWidth * 0.37,
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   colors: [Colors.purple, Colors.purple, Colors.purple],
                  // ),
                  borderRadius: BorderRadius.circular(24),
                  color: DisplayFunction.isDark?AppColors.color[0]["projectcardhovercolor"]:AppColors.color[1]["projectcardhovercolor"],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "News App",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                            decorationStyle: TextDecorationStyle.double,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Get the latest headlines from India and beyond. Filter news updates based on categories and search for articles on the Web all through one app.\n An application with a user-friendly interface that adapts to displays and measurements. brings you the most recent news in science and sports etc.",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Padding(
              padding: const EdgeInsets.only(bottom: 20,right: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    widget.onTap;
                  },
                  onHover: (value) {
                    setState(() {
                      hovring = value;
                    });
                  },
                  child: AnimatedContainer(
                    width: 150,
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                        color: DisplayFunction.isDark?AppColors.color[0]["projectcardhovercolor"]:AppColors.color[1]["projectcardhovercolor"],
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                            color:  Colors.white,width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            
                            Text("More Details ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                            FaIcon(CupertinoIcons.arrow_right,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          
                    ],
                  ),
                ),
              ))
          : Text('')
    ]);
  }
}

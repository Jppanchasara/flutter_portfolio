// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/componets/about.dart';
import 'package:portfolio/componets/education.dart';
import 'package:portfolio/componets/footer.dart';
import 'package:portfolio/componets/myProject.dart';
import 'package:portfolio/componets/skills.dart';
import 'package:portfolio/res/appcolor.dart';
import 'package:portfolio/res/checkmobile.dart';
import 'package:provider/provider.dart';

import 'themechnage/themeModel.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  late bool isDark=false;
  final skillkey = GlobalKey();
  final eductionKey = GlobalKey();
  final Project = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DisplayFunction.isMobile =
        MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
        backgroundColor: DisplayFunction.isDark?AppColors.color[0]["primarycolor"]:AppColors.color[1]["primarycolor"],
        appBar: AppBar(
          title: Text(DisplayFunction.isDark ? "<Jayesh/>" : "<Jayesh/>",style: TextStyle(color:  DisplayFunction.isDark?AppColors.color[0]["appbartextcolor"]:AppColors.color[1]["appbartextcolor"],),),
          backgroundColor: DisplayFunction.isDark?AppColors.color[0]["secondarycolor"]:AppColors.color[1]["secondarycolor"],
          actions: DisplayFunction.isMobile
              ? null
              : [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Scrollable.ensureVisible(eductionKey.currentContext!);
                        },
                        child: Text('Education')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Scrollable.ensureVisible(skillkey.currentContext!);
                        },
                        child: Text('Skills')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Scrollable.ensureVisible(Project.currentContext!);
                        },
                        child: Text('Projects')),
                  ),
                  IconButton(
                      icon: Icon(
                        DisplayFunction.isDark
                            ? Icons.wb_sunny_rounded
                            : Icons.nightlight_round,
                        color: DisplayFunction.isDark
                            ? Colors.white
                            : Colors.purple,
                      ),
                      onPressed: () {
                        setState(() {
                          DisplayFunction.isDark
                              ? DisplayFunction.isDark = false
                              : DisplayFunction.isDark = true;
                        });
                      })
                ],
        ),
        endDrawer: DisplayFunction.isMobile
            ? Drawer(
                child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Scrollable.ensureVisible(eductionKey.currentContext!);
                      },
                      child: Text('Education')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Scrollable.ensureVisible(skillkey.currentContext!);
                      },
                      child: Text('Skills')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Scrollable.ensureVisible(Project.currentContext!);
                      },
                      child: Text('Projects')),
                ),
                IconButton(
                    icon: Icon(DisplayFunction.isDark
                        ? Icons.nightlight_round
                        : Icons.wb_sunny),
                    onPressed: () {
                      DisplayFunction.isDark
                          ? DisplayFunction.isDark = false
                          : DisplayFunction.isDark = true;
                    }),
              ]))
            : null,
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  About(),
                  Education(
                    key: eductionKey,
                  ),
                  MyProject(
                    key: Project,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Skills(
                  key: skillkey,
                ),
              ),
              Footer()
            ]),
          ),
        ));
  }
}


//  return Scaffold(
//       backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         title: Text(
//           'Jayesh Panchasara',
//           style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
//         ),
//         backgroundColor: Colors.purple.shade100,
//         actions: isMobile ? null : navItems,
//       ),
      
//       drawer: isMobile
//           ? Drawer(
//               backgroundColor: Colors.purple.shade100,
//               child: ListView(
//                 children: navItems,
//               ),
//             )
//           : null,
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(children: [
//             Wrap(
//               alignment: WrapAlignment.center,
//               runAlignment: WrapAlignment.center,
//               children: [
//                 About(),
//                 Education(
//                   key: eductionKey,
//                 ),
//                 MyProject(
//                   key: Project,
//                 )
//               ],
//             ),
//             Skills(
//               key: skillkey,
//             ),
//             Footer()
//           ]),
//         ),
//       ),
//     );
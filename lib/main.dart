

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/res/appcolor.dart';
import 'package:portfolio/res/checkmobile.dart';
import 'package:portfolio/themechnage/themeModel.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DisplayFunction.isDark
          ? ThemeData(
            useMaterial3: true,
            
              fontFamily: "custom",
              brightness: Brightness.dark,
            )
          : ThemeData(
              useMaterial3: true,
              brightness: Brightness.light,
              
              fontFamily: "custom"
            ),
      debugShowCheckedModeBanner: false,
      home:const Portfolio(),
    );
    
    
  }
  
}

// return MaterialApp(

// debugShowCheckedModeBanner: false,
//       title: 'jayesh Protofolio',
//       theme: ThemeData(
        
//         primarySwatch: Colors.purple,
//         canvasColor: Colors.purple.shade100,
//         useMaterial3:true,
//         fontFamily: "custom"
//       ),
//       home: Portfolio()
//     );
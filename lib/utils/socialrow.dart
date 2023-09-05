// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, implementation_imports

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/animatedIconbutton.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: [
        animatedIconButton(iconData: FontAwesomeIcons.facebook, onTap: () {}),
        animatedIconButton(iconData: FontAwesomeIcons.instagram, onTap: () {}),
        animatedIconButton(iconData: FontAwesomeIcons.twitter, onTap: () {}),
        animatedIconButton(iconData: FontAwesomeIcons.linkedin, onTap: () {}),
      ],
    );
  }
}

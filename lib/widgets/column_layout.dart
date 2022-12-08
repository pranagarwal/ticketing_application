import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firsttext;
  final String secondtext;
  final bool? isColor;
  const AppColumnLayout({Key? key, required this.firsttext, required this.secondtext,
    required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firsttext, style: isColor == null?Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5)),
        Text(secondtext, style: isColor == null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
      ],
    );
  }
}
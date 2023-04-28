// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:seta/tool/appcolor.dart';

class AppTitle extends StatelessWidget {
  double size;
  String text;
  Color color;
  AppTitle({
    super.key,
    this.size = 28,
    this.color = AppColors.black_200,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

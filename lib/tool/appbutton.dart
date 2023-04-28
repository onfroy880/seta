import 'package:flutter/material.dart';
import 'package:seta/tool/appcolor.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  AppButton({super.key, this.widht, this.btnTxt, this.isResponsive = false});

  bool? isResponsive;
  double? widht;
  String? btnTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: 38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.green_200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            btnTxt!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

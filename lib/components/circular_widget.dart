import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class CircularWidget extends StatelessWidget {
  CircularWidget(
      {super.key, this.bgColor, required this.title, required this.icon});
  Color? bgColor;
  String? title;
  String? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon.toString(),
            height: 8.h, width: 8.h, fit: BoxFit.cover),
        5.heightBox,
        Text(
          title.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

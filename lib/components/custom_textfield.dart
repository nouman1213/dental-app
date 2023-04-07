import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class CustomTextFeild extends StatelessWidget {
  CustomTextFeild(
      {super.key,
      required this.controller,
      required this.title,
      required this.hintText,
      required this.textKeyboardType,
      required this.validator});
  String? title;
  String? hintText;
  final controller;
  final validator;
  final textKeyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.05),
      ),
      width: double.infinity,
      height: 5.h,
      child: Row(
        children: [
          Text(
            "$title",
            style: TextStyle(fontSize: 11.sp, color: Colors.white),
          )
              .centered()
              .box
              .width(35.w)
              .customRounded(BorderRadius.circular(15.sp))
              .color(Theme.of(context).colorScheme.secondary)
              .height(6.h)
              .make(),
          SizedBox(
            width: 50.w,
            child: TextFormField(
              textInputAction: TextInputAction.done,
              keyboardType: textKeyboardType,
              controller: controller,
              validator: validator,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(1.5.h),
                  hintText: '$hintText',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:dental/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../components/roundbutton.dart';

class ConFirmAppointScreen extends StatelessWidget {
  ConFirmAppointScreen({super.key});

  final HomeController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _controller.onCloseMethod();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 0,
          title: 'Confirm Appointment'.text.make(),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            5.h.heightBox,
            'Your Appointment has been'
                .text
                .align(TextAlign.center)
                .xl3
                .make()
                .centered(),
            2.h.heightBox,
            Text(
              "Confirmed",
              style: GoogleFonts.acme(
                textStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w200,
                  fontSize: 20.sp,
                ),
              ),
            ),
            6.h.heightBox,
            'Subscription Plan Slider here'
                .text
                .xl3
                .make()
                .centered()
                .box
                .height(180)
                .color(Colors.grey.withOpacity(0.2))
                .make(),
            16.h.heightBox,
            'Short Description for\nSubscription Plan here'.text.xl3.make(),
            Spacer(),
            FadeInUp(
              child: Center(
                  child: RoundButton(
                title: 'Subscription Information',
                backgroundColor: Theme.of(context).colorScheme.secondary,
                onTap: () {},
              )),
            ),
            2.h.heightBox,
          ],
        ),
      ),
    );
  }
}

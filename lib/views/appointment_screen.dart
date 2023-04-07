import 'package:animate_do/animate_do.dart';
import 'package:dental/components/roundbutton.dart';
import 'package:dental/components/custom_textfield.dart';
import 'package:dental/controller/home_controller.dart';
import 'package:dental/views/confirmed_appointment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class AppointmentScreen extends StatefulWidget {
  AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  List<DropdownMenuItem<String>> dropItems = [
    DropdownMenuItem<String>(
      child: Text("Services"),
      value: "Services",
    ),
    DropdownMenuItem<String>(
      child: Text("Teeth Alignment"),
      value: "ta",
    ),
    DropdownMenuItem<String>(
      child: Text("Root Canal"),
      value: "rc",
    ),
    DropdownMenuItem<String>(
      child: Text("polishing"),
      value: "p",
    ),
    DropdownMenuItem<String>(
      child: Text("Scaling"),
      value: "s",
    ),
    DropdownMenuItem<String>(
      child: Text("Extraction"),
      value: "e",
    ),
  ];
  // List<DropdownMenuItem<String>> dropItemsDays = [
  //   DropdownMenuItem<String>(
  //     child: Text("Day"),
  //     value: "Day",
  //   ),
  //   DropdownMenuItem<String>(
  //     child: Text("Mon"),
  //     value: "m",
  //   ),
  //   DropdownMenuItem<String>(
  //     child: Text("Tue"),
  //     value: "t",
  //   ),
  //   DropdownMenuItem<String>(
  //     child: Text("Wed"),
  //     value: "w",
  //   ),
  //   DropdownMenuItem<String>(
  //     child: Text("Thus"),
  //     value: "ths",
  //   ),
  //   DropdownMenuItem<String>(
  //     child: Text("Fri"),
  //     value: "f",
  //   ),
  // ];
  String? _selectedValue = 'Services';
  // String? _selectedValueDays = 'Day';
  final HomeController _controller = Get.put(HomeController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    _controller.selectedDate = _controller.daysItems.first.value!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        title: 'Book Appointment'.text.make(),
      ),
      body: Padding(
        padding: EdgeInsets.all(1.h),
        child: Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                4.h.heightBox,
                FadeInLeft(
                  child: CustomTextFeild(
                      controller: _controller.nameController,
                      title: 'Full Name',
                      hintText: 'Enter Name',
                      textKeyboardType: TextInputType.name,
                      validator: null),
                ),
                1.5.h.heightBox,
                FadeInLeft(
                  child: CustomTextFeild(
                      controller: _controller.contactController,
                      title: 'Contact',
                      hintText: 'Enter Contact No.',
                      textKeyboardType: TextInputType.phone,
                      validator: null),
                ),
                1.5.h.heightBox,
                FadeInLeft(
                  child: CustomTextFeild(
                      controller: _controller.cityController,
                      title: 'City',
                      hintText: 'Enter City',
                      textKeyboardType: TextInputType.name,
                      validator: null),
                ),
                2.h.heightBox,
                FadeInLeft(
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    iconSize: 16.sp,
                    iconEnabledColor: Theme.of(context).colorScheme.onPrimary,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 12.sp,
                    ),
                    decoration: InputDecoration(
                      // fillColor: Colors.grey,
                      contentPadding: EdgeInsets.all(1.h),
                      // suffix: Icon(CupertinoIcons.forward),
                      isCollapsed: false,
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    validator: null,
                    dropdownColor: Theme.of(context).colorScheme.secondary,
                    value: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value.toString();
                        print(_selectedValue.toString());
                      });
                    },
                    items: dropItems,
                  )
                      .box
                      .customRounded(BorderRadius.circular(15.sp))
                      .alignCenterLeft
                      .width(double.infinity)
                      .color(Theme.of(context).colorScheme.secondary)
                      .make(),
                ),
                8.h.heightBox,
                FadeInLeft(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // DropdownButtonFormField(
                      //   isExpanded: true,
                      //   iconSize: 15.sp,
                      //   iconEnabledColor:
                      //       Theme.of(context).colorScheme.onPrimary,
                      //   style: TextStyle(
                      //     color: Theme.of(context).colorScheme.onPrimary,
                      //     fontSize: 12.sp,
                      //   ),
                      //   decoration: InputDecoration(
                      //     contentPadding: EdgeInsets.all(1.h),
                      //     // suffix: Icon(CupertinoIcons.forward),
                      //     isCollapsed: false,
                      //     border: InputBorder.none,
                      //     isDense: true,
                      //   ),
                      //   validator: null,
                      //   dropdownColor:
                      //       Theme.of(context).colorScheme.secondary,
                      //   value: _selectedValueDays,
                      //   onChanged: (value) {
                      //     setState(() {
                      //       _selectedValueDays = value.toString();
                      //       print(_selectedValueDays.toString());
                      //     });
                      //   },
                      //   items: dropItemsDays,
                      // )
                      //     .box
                      //     .customRounded(BorderRadius.circular(15.sp))
                      //     .alignCenterLeft
                      //     .width(20.w)
                      //     .color(Theme.of(context).colorScheme.secondary)
                      //     .make(),
                      DropdownButtonFormField(
                        isExpanded: true,
                        iconSize: 15.sp,
                        iconEnabledColor:
                            Theme.of(context).colorScheme.onPrimary,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 12.sp,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.h),
                          // suffix: Icon(CupertinoIcons.forward),
                          isCollapsed: false,
                          border: InputBorder.none,
                          isDense: true,
                        ),
                        validator: null,
                        dropdownColor: Theme.of(context).colorScheme.secondary,
                        value: _controller.selectedDate,
                        onChanged: (value) {
                          _controller.selectedDate = value!;
                        },
                        items: _controller.daysItems,
                      )
                          .box
                          .customRounded(BorderRadius.circular(15.sp))
                          .alignCenterLeft
                          .width(45.w)
                          .color(Theme.of(context).colorScheme.secondary)
                          .make(),
                      DropdownButtonFormField(
                        isExpanded: true,
                        iconSize: 15.sp,
                        iconEnabledColor:
                            Theme.of(context).colorScheme.onPrimary,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 12.sp,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.h),
                          // suffix: Icon(CupertinoIcons.forward),
                          isCollapsed: false,
                          border: InputBorder.none,
                          isDense: true,
                        ),
                        validator: null,
                        dropdownColor: Theme.of(context).colorScheme.secondary,
                        value: _controller.selectedTime,
                        onChanged: (value) {
                          _controller.selectedTime = value.toString();
                        },
                        items: _controller.timeItems,
                      )
                          .box
                          .customRounded(BorderRadius.circular(15.sp))
                          .alignCenterLeft
                          .width(45.w)
                          .color(Theme.of(context).colorScheme.secondary)
                          .make(),
                    ],
                  ),
                ),
                // 10.h.heightBox,
                Spacer(),
                FadeInLeft(
                  child: Center(
                      child: RoundButton(
                          title: 'Book Now',
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          onTap: () {
                            print(_controller.selectedDate);
                            if (_controller.nameController.text == '' ||
                                _controller.contactController.text == '' ||
                                _controller.cityController.text == '') {
                              // VxToast.showLoading(context);
                              VxToast.show(
                                context,
                                pdHorizontal: 30,
                                position: VxToastPosition.top,
                                msg: "Please filled all Fields",
                                bgColor: Theme.of(context).colorScheme.primary,
                                textColor: Colors.white,
                              );
                            } else if (_selectedValue == 'Services') {
                              VxToast.show(
                                context,
                                pdHorizontal: 30,
                                position: VxToastPosition.top,
                                msg: "Please Select Services",
                                bgColor: Theme.of(context).colorScheme.primary,
                                textColor: Colors.white,
                              );
                            } else if (_controller.selectedTime ==
                                "Time Slot") {
                              VxToast.show(
                                context,
                                pdHorizontal: 30,
                                position: VxToastPosition.top,
                                msg: "Please Select Time",
                                bgColor: Theme.of(context).colorScheme.primary,
                                textColor: Colors.white,
                              );
                            } else {
                              Get.to(() => ConFirmAppointScreen(),
                                  transition: Transition.leftToRightWithFade);
                            }
                          })),
                ),
                // 2.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:dental/components/roundbutton.dart';
import 'package:dental/components/custom_textfield.dart';
import 'package:dental/controller/home_controller.dart';
import 'package:dental/views/consultation_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class OnlineConsultationScreen extends StatefulWidget {
  OnlineConsultationScreen({super.key});

  @override
  State<OnlineConsultationScreen> createState() =>
      _OnlineConsultationScreenState();
}

class _OnlineConsultationScreenState extends State<OnlineConsultationScreen> {
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

  String? _selectedValue = 'Services';
  final HomeController _controller = Get.put(HomeController());
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _controller.nameController.clear();
    _controller.contactController.clear();
    _controller.cityController.clear();
    _selectedValue = 'Services';
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.selectedDate = _controller.daysItems.first.value!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        title: 'Online Consultation'.text.make(),
      ),
      body: Padding(
        padding: EdgeInsets.all(1.h),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.85,
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
                      iconSize: 15.sp,
                      iconEnabledColor: Theme.of(context).colorScheme.onPrimary,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 11.sp,
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
                  3.h.heightBox,
                  FadeInLeft(
                    child: Text(
                      'Teeth Conditions',
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: Theme.of(context).colorScheme.onPrimary),
                    )
                        .centered()
                        .box
                        .height(5.h)
                        .customRounded(BorderRadius.circular(15.sp))
                        .color(Theme.of(context).colorScheme.secondary)
                        .make(),
                  ),
                  3.h.heightBox,

                  FadeInLeft(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _controller.showImagePicker(0);
                            // _controller.pickImage(ImageSource.camera, 0);
                          },
                          child: Obx(() => _controller.images[0].value == null
                              ? Image.asset('assets/images/cmera.png')
                                  .box
                                  .height(60)
                                  .roundedSM
                                  .color(Colors.grey.withOpacity(0.4))
                                  .make()
                              : Image.file(
                                  _controller.images[0].value!,
                                  width: 100,
                                  height: 80,
                                  fit: BoxFit.cover,
                                )
                                  .box
                                  .height(60)
                                  .roundedSM
                                  .color(Colors.grey.withOpacity(0.4))
                                  .make()),
                        ),
                        GestureDetector(
                          onTap: () {
                            _controller.showImagePicker(1);

                            // _controller.pickImage(ImageSource.camera, 1);
                          },
                          child: Obx(() => _controller.images[1].value == null
                              ? Image.asset('assets/images/cmera.png')
                                  .box
                                  .height(60)
                                  .roundedSM
                                  .color(Colors.grey.withOpacity(0.4))
                                  .make()
                              : Image.file(
                                  _controller.images[1].value!,
                                  width: 100,
                                  height: 80,
                                  fit: BoxFit.cover,
                                )
                                  .box
                                  .height(60)
                                  .roundedSM
                                  .color(Colors.grey.withOpacity(0.4))
                                  .make()),
                        ),
                        GestureDetector(
                          onTap: () {
                            _controller.showImagePicker(2);

                            // _controller.pickImage(ImageSource.camera, 2);
                          },
                          child: Obx(() => _controller.images[2].value == null
                              ? Image.asset('assets/images/cmera.png')
                                  .box
                                  .height(60)
                                  .roundedSM
                                  .color(Colors.grey.withOpacity(0.4))
                                  .make()
                              : Image.file(
                                  _controller.images[2].value!,
                                  width: 100,
                                  height: 80,
                                  fit: BoxFit.cover,
                                )
                                  .box
                                  .height(60)
                                  .roundedSM
                                  .color(Colors.grey.withOpacity(0.4))
                                  .make()),
                        ),
                      ],
                    ),
                  ),
                  4.h.heightBox,
                  FadeInLeft(
                    child: Text(
                      'Detail about problem',
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: Theme.of(context).colorScheme.onPrimary),
                    )
                        .centered()
                        .box
                        .height(5.h)
                        .customRounded(BorderRadius.circular(15.sp))
                        .color(Theme.of(context).colorScheme.secondary)
                        .make(),
                  ),
                  2.h.heightBox,
                  FadeInLeft(
                    child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.3),
                          filled: true,
                          border: OutlineInputBorder(),
                          hintText: 'please enter details about problem'),
                    ),
                  ),

                  // Spacer(),
                  4.h.heightBox,

                  FadeInLeft(
                    child: Center(
                        child: RoundButton(
                            title: 'Submit Now',
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            onTap: () {
                              // print(_controller.printImagePaths());

                              if (_controller.nameController.text == '' ||
                                  _controller.contactController.text == '' ||
                                  _controller.cityController.text == '') {
                                // VxToast.showLoading(context);
                                VxToast.show(
                                  context,
                                  pdHorizontal: 30,
                                  position: VxToastPosition.top,
                                  msg: "Please enter data in all Fields",
                                  bgColor:
                                      Theme.of(context).colorScheme.primary,
                                  textColor: Colors.white,
                                );
                              } else if (_selectedValue == 'Services') {
                                VxToast.show(
                                  context,
                                  pdHorizontal: 30,
                                  position: VxToastPosition.top,
                                  msg: "Please Select Services",
                                  bgColor:
                                      Theme.of(context).colorScheme.primary,
                                  textColor: Colors.white,
                                );
                              } else {
                                Get.to(() => ConsultationDetailsScreen(),
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
      ),
    );
  }
}

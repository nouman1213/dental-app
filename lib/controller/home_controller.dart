import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  final nameController = TextEditingController();
  final contactController = TextEditingController();
  final cityController = TextEditingController();
  final _selectedDate = Rxn<String>("Date");

  String get selectedDate => _selectedDate.value ?? '';

  set selectedDate(String value) => _selectedDate.value = value;
  final List<DropdownMenuItem<String>> daysItems = [
    DropdownMenuItem(value: "Date", child: Text("Date")),
    ...List.generate(5, (index) {
      final date = DateTime.now().add(Duration(days: index + 1));
      final label = DateFormat('dd-MM-yyyy').format(date);
      return DropdownMenuItem(
        value: label,
        child: Text(label),
      );
    }),
  ];
  // final List<DropdownMenuItem<String>> daysItems = List.generate(5, (index) {
  //   final date = DateTime.now().add(Duration(days: index + 1));
  //   final label = DateFormat('dd-MM-yyyy').format(date);
  //   return DropdownMenuItem(
  //     value: label,
  //     child: Text(label),
  //   );
  // });

  //////////////////////////////////////
  final _selectedTime = "Time Slot".obs;

  String get selectedTime => _selectedTime.value;

  set selectedTime(String value) => _selectedTime.value = value;

  final List<DropdownMenuItem<String>> timeItems = [
    DropdownMenuItem(value: "Time Slot", child: Text("Time Slot")),
    DropdownMenuItem(value: "Option 1", child: Text("11pm to 12pm")),
    DropdownMenuItem(value: "Option 2", child: Text("12pm to 01pm")),
    DropdownMenuItem(value: "Option 3", child: Text("01pm to 02pm")),
    DropdownMenuItem(value: "Option 4", child: Text("02pm to 03pm")),
    DropdownMenuItem(value: "Option 5", child: Text("03pm to 04pm")),
  ];
  ///////////////////

  @override
  void onInit() {
    _selectedTime.value = timeItems[0].value!;
    // _selectedWeek.value = weekItems[0].value!;
    super.onInit();
  }

  void onClose() {
    _selectedDate.value = daysItems.first.value;
    _selectedTime.value = "Time Slot";
    nameController.clear();
    cityController.clear();
    contactController.clear();

    super.onClose();
  }

  onCloseMethod() {
    _selectedDate.value = daysItems.first.value;
    _selectedTime.value = "Time Slot";
    nameController.clear();
    cityController.clear();
    contactController.clear();
    update();
  }

///////////////////imagePickerMetthod//////////////////
  // List<Rx<File?>> images = [
  //   Rx<File?>(null),
  //   Rx<File?>(null),
  //   Rx<File?>(null),
  // ];

  // Future<void> pickImage(ImageSource source, int index) async {
  //   final pickedFile = await ImagePicker().pickImage(source: source);
  //   if (pickedFile != null) {
  //     images[index].value = File(pickedFile.path);
  //   }
  // }

  // printImagePaths() {
  //   for (final image in images) {
  //     if (image.value != null) {
  //       print(image.value!.path);
  //     }
  //   }
  // }
  List<Rx<File?>> images = [
    Rx<File?>(null),
    Rx<File?>(null),
    Rx<File?>(null),
  ];

  Future<void> showImagePicker(int index) async {
    final source = await Get.defaultDialog<ImageSource>(
      title: 'Select Image Source',
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () => Get.back(result: ImageSource.camera),
            child: Text('Camera'),
          ),
          ElevatedButton(
            onPressed: () => Get.back(result: ImageSource.gallery),
            child: Text('Gallery'),
          ),
        ],
      ),
    );

    if (source != null) {
      await pickImage(source, index);
    }
  }

  Future<void> pickImage(ImageSource source, int index) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      images[index].value = File(pickedFile.path);
    }
  }

  void printImagePaths() {
    for (final image in images) {
      if (image.value != null) {
        print(image.value!.path);
      }
    }
  }
}

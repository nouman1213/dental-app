import 'package:dental/controller/main_controller.dart';
import 'package:dental/views/all_appointments.dart';
import 'package:dental/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final MainScreenController controller = Get.put(MainScreenController());

  final List<Widget> _pages = [
    HomeScreen(),
    AllAppointmentsScreen(),
    Center(
      child: Text("Doc Chat"),
    ),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,

      body: Obx(() => _pages[controller.selectedTab.value]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(),
        child: Obx(() => BottomNavigationBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              showUnselectedLabels: true,
              currentIndex: controller.selectedTab.value,
              onTap: (index) => controller.changeTab(index),
              selectedItemColor: Theme.of(context).colorScheme.primaryContainer,
              // unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month), label: "Appointments"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat), label: "Doc Chat"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ],
            )),
      ),
    );
  }
}

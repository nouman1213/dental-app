import 'package:animate_do/animate_do.dart';
import 'package:dental/components/roundbutton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../components/drawer.dart';
import '../components/custom_textfield.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text('Profile'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onPrimary)),
                  child: Icon(Icons.notifications)))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(1.h),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  2.h.heightBox,
                  FadeInDown(
                    child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          size: 45,
                          color: Colors.white,
                        )),
                  ),
                  5.h.heightBox,
                  FadeInLeft(
                    child: CustomTextFeild(
                        controller: null,
                        title: 'Full Name',
                        hintText: 'Enter name',
                        textKeyboardType: TextInputType.name,
                        validator: null),
                  ),
                  2.h.heightBox,
                  FadeInLeft(
                    child: CustomTextFeild(
                        controller: null,
                        title: 'Contact',
                        hintText: 'Enter contact no.',
                        textKeyboardType: TextInputType.phone,
                        validator: null),
                  ),
                  2.h.heightBox,
                  FadeInLeft(
                    child: CustomTextFeild(
                        controller: null,
                        title: 'City',
                        hintText: 'Enter City',
                        textKeyboardType: TextInputType.name,
                        validator: null),
                  ),
                  2.h.heightBox,
                  FadeInLeft(
                    child: CustomTextFeild(
                        controller: null,
                        title: 'Address',
                        hintText: 'Enter Address',
                        textKeyboardType: TextInputType.name,
                        validator: null),
                  ),
                  2.h.heightBox,
                  FadeInLeft(
                    child: CustomTextFeild(
                        controller: null,
                        title: 'Email',
                        hintText: 'Enter Email',
                        textKeyboardType: TextInputType.emailAddress,
                        validator: null),
                  ),
                  2.h.heightBox,
                  FadeInLeft(
                    child: CustomTextFeild(
                        controller: null,
                        title: 'Date of Birth',
                        hintText: 'Enter Date of Birth',
                        textKeyboardType: TextInputType.name,
                        validator: null),
                  ),
                ],
              ),
            ),
            FadeInUp(
              child: Center(
                  child: RoundButton(
                      title: 'Save',
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      onTap: () {})),
            ),
            2.h.heightBox
          ],
        ),
      ),
    );
  }
}

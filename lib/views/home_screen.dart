import 'package:animate_do/animate_do.dart';
import 'package:dental/components/circular_widget.dart';
import 'package:dental/components/drawer.dart';
import 'package:dental/views/appointment_screen.dart';
import 'package:dental/views/online_consultation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text('Ensmile'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 0.5.h),
              Container(
                width: double.infinity,
                height: 18.h,
                child: VxSwiper.builder(
                    viewportFraction: 1.0,
                    aspectRatio: 18.h / MediaQuery.of(context).size.width,
                    autoPlay: true,
                    // height: 18.h,
                    enlargeCenterPage: false,
                    itemCount: sliderImages.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        sliderImages[index],
                        fit: BoxFit.cover,
                      )
                          .box
                          .margin(const EdgeInsets.symmetric(horizontal: 0))
                          .make();
                    }),
              ),
              //////1stRow////////
              SizedBox(height: 1.h),

              Text(
                'General Treatment',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Theme.of(context).colorScheme.primary),
              ),
              Divider(
                  thickness: 2, color: Theme.of(context).colorScheme.primary),
              SizedBox(height: 1.h),

              FadeInLeft(
                duration: Duration(milliseconds: 1400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularWidget(
                      icon: 'assets/images/1-04.png',
                      title: 'Scaling \nand Polishing',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-03.png',
                      title: 'Stain\nRemoving',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-02.png',
                      title: 'Floride \nand Therapy',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-01.png',
                      title: 'Whitening\nBleaching',
                    ),
                  ],
                ),
              ),
              ////2ndRow///////
              SizedBox(height: 1.h),

              Text(
                'Procedures',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Theme.of(context).colorScheme.primary),
              ),
              Divider(
                  thickness: 2, color: Theme.of(context).colorScheme.primary),
              SizedBox(height: 1.h),

              FadeInRight(
                duration: Duration(milliseconds: 1400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularWidget(
                      icon: 'assets/images/1-09.png',
                      title: 'Root Canal\n',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-08.png',
                      title: 'Filling\n',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-07.png',
                      title: 'Post & Core \nBuild Up',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-06.png',
                      title: 'Pulpotomy\n',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-05.png',
                      title: 'Pit & Fisher \nSealents',
                    ),
                  ],
                ),
              ),
              //////3rdRow////////
              SizedBox(height: 1.h),

              Text(
                'Aligner Treatment',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Theme.of(context).colorScheme.primary),
              ),
              Divider(
                  thickness: 2, color: Theme.of(context).colorScheme.primary),
              // SizedBox(height: 1.h),

              FadeInUp(
                duration: Duration(milliseconds: 1400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularWidget(
                      icon: 'assets/images/1-13.png',
                      title: 'Aligner Box \n',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-12.png',
                      title: 'Fix Retainers\n',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-11.png',
                      title: 'Treatment\nHistory',
                    ),
                    CircularWidget(
                      icon: 'assets/images/1-10.png',
                      title: 'Self\nAssestment',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => OnlineConsultationScreen());
                    },
                    child: FadeInLeft(
                      duration: Duration(milliseconds: 1400),
                      child: Container(
                        height: 4.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(05),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Center(
                            child: Text(
                              'Get Online Consultation',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  15.widthBox,
                  InkWell(
                    onTap: () {
                      Get.to(() => AppointmentScreen());
                    },
                    child: FadeInRight(
                      duration: Duration(milliseconds: 1400),
                      child: Container(
                        height: 4.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(05),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Center(
                            child: Text(
                              'Book On Appointment',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List sliderImages = [
    'assets/images/s1.png',
    'assets/images/s2.png',
    'assets/images/s3.png',
    'assets/images/s4.png',
  ];
}

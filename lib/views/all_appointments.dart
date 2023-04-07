import 'package:animate_do/animate_do.dart';
import 'package:dental/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class AllAppointmentsScreen extends StatelessWidget {
  const AllAppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text('Appointments'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onPrimary)),
              child: Icon(Icons.notifications),
            ),
          ),
        ],
      ),
      body: FadeInLeft(
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(0.5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Theme.of(context).colorScheme.onPrimary),
                    )
                        .centered()
                        .box
                        .height(4.5.h)
                        .width(10.w)
                        .roundedSM
                        .color(Theme.of(context).colorScheme.secondary)
                        .make(),
                    2.w.widthBox,
                    Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.all(0.5.h),
                          child: Text(
                            'Dr.Hira',
                            style: TextStyle(
                              fontSize: 14.sp,
                              // fontWeight: FontWeight.w600,
                              // color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    )
                        .box
                        .height(4.5.h)
                        .roundedSM
                        .color(Colors.grey.withOpacity(0.3))
                        .make()
                        .expand(),
                    2.w.widthBox,
                    Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.all(0.5.h),
                          child: Text(
                            'Guberg Galleria',
                            style: TextStyle(
                              fontSize: 14.sp,
                              // fontWeight: FontWeight.w600,
                              // color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    )
                        .box
                        .height(4.5.h)
                        .roundedSM
                        .color(Colors.grey.withOpacity(0.3))
                        .make()
                        .expand(),
                    2.w.widthBox,
                    Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.all(0.5.h),
                          child: Text(
                            '08/04/2023',
                            style: TextStyle(
                              fontSize: 14.sp,
                              // fontWeight: FontWeight.w600,
                              // color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    )
                        .box
                        .height(4.5.h)
                        .roundedSM
                        .color(Colors.grey.withOpacity(0.3))
                        .make()
                        .expand(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:dental/splash_screen.dart';
import 'package:dental/theme/themes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'views/main_screen.dart';

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    );
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: SplashScreen(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}

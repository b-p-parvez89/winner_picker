import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winner_picker/languages/traslator.dart';
import 'package:winner_picker/screen/spine_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter App',
          translations: AppTranslations(), 
           locale: Locale('en', 'US'),
          fallbackLocale: Locale('en', 'US'), 
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: child,
        );
      },
      child: SpinningWheelOfNames(),
    );
  }
}



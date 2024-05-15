import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winner_picker/screen/get_started_page.dart';

class SelectLanguagePage extends StatefulWidget {
  const SelectLanguagePage({Key? key}) : super(key: key);

  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePageState();
}

class _SelectLanguagePageState extends State<SelectLanguagePage> {
  String selectedLanguage = 'en_US'; // Initialize with default language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Container(
                height: 350.h,
                child: Image.asset("assets/lg.png"),
              ),
            ),
            Text(
            'language_selection'.tr,
              style: TextStyle(
                  color: Color(0xFF0F9D58),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _container(
                        onTap: () {
                          setState(() {
                            selectedLanguage = 'en_US';
                          });
                          Get.updateLocale(Locale('en', 'US'));
                        },
                        title: "English",
                        isSelected: selectedLanguage == 'en_US',
                      ),
                      _container(
                        onTap: () {
                          setState(() {
                            selectedLanguage = 'ar_ARB';
                          });
                          Get.updateLocale(Locale('ar', 'ARB'));
                        },
                        title: "عربي",
                        isSelected: selectedLanguage == 'ar_ARB',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _container(
                        onTap: () {
                          setState(() {
                            selectedLanguage = 'bn_BD';
                          });
                          Get.updateLocale(Locale('bn', 'BD'));
                        },
                        title: "বাংলা",
                        isSelected: selectedLanguage == 'bn_BD',
                      ),
                      _container(
                        onTap: () {
                          setState(() {
                            selectedLanguage = 'hi_IN';
                          });
                          Get.updateLocale(Locale('hi', 'IN'));
                        },
                        title: "हिंदी",
                        isSelected: selectedLanguage == 'hi_IN',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Get.to(GetStarrded());
                  },
                  child: Container(
                    height: 50.h,
                    width: 170.w,
                    child: Center(
                      child: Text(
                        "continue".tr,
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.pink),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _container({
    required String title,
    required VoidCallback onTap,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 150,
        decoration: BoxDecoration(
          color: isSelected ? Colors.green.withOpacity(0.5) : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5), // Set shadow color
              blurRadius: 3,
              spreadRadius: 0.5,
              offset: Offset(0, 4), // Offset
            ),
          ],
          border: Border.all(
            color: Color(0xFF0F9D58),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFF0F9D58),
              fontSize: 20,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}

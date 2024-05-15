import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "enter_your_details_below".tr,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "enter_name".tr,
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.6)),
                      prefixIcon: Icon(Icons.visibility_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "enter_email".tr,
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.6)),
                      prefixIcon: Icon(Icons.visibility_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'password'.tr,
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.6)),
                      prefixIcon: Icon(Icons.visibility_outlined),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_outlined)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "confirm_password".tr,
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_outlined)),
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.6)),
                      prefixIcon: Icon(Icons.visibility_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                SizedBox(
                  height: 16.h,
                ),
                GestureDetector(
                  child: Container(
                    height: 60.h,
                    child: Center(
                      child: Text(
                        "sing_Up".tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        "or_continue".tr,
                        style: TextStyle(fontSize: 14, height: 2),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ))
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(14)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/googleIcons.png",
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "login_with_gmail".tr,
                        style: TextStyle(fontSize: 16.sp),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'already_have_an_account'.tr,
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                  TextSpan(
                    text: 'login'.tr,
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle onTap action
                      },
                  ),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

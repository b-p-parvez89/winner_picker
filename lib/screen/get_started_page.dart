import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winner_picker/screen/loginPage.dart';

class GetStarrded extends StatelessWidget {
  const GetStarrded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          bottom: 10.h,
          child: Container(
              height: 400.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/star.png",
                      ))),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 300.h,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/get_started_image.png"))),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(LoginPage());
                      },
                      child: Container(
                          height: 138.h,
                          width: 160.h,
                          decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.pink,
                          ),
                          child: Center(
                              child: Text(
                            'get_start'.tr,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                  ),
                ),
              )),
        ),
        Positioned(
          top: 20,
          child: Image.asset(height: 350, "assets/images/pick_you_winner.png"),
        )
      ],
    ));
  }
}

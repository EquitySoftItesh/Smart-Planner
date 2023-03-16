import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/auth/login_src.dart';
import 'package:smartplanner/src/modules/splash/splash_ctrl.dart';
import 'package:get/get.dart';
import 'package:smartplanner/src/widgets/ColorsSchemes.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final _controller = SplashController();

  @override
  Widget build(BuildContext context) {
    print(Get.height);
    print(Get.width);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView.builder(
                  controller: _controller.pageController,
                  onPageChanged: _controller.selectedPageIndex,
                  itemCount: _controller.onboardingPages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 85),
                        Center(
                          child: Image.asset(
                            _controller.onboardingPages[index].imageAssets,
                            height: Get.height > 700
                                ? Get.height / 2
                                : Get.height / 2.5,
                          ),
                        ),
                        const SizedBox(height: 91),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            _controller.onboardingPages[index].title,
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SizedBox(
                            width: 250,
                            height: 40,
                            child: Text(
                              _controller.onboardingPages[index].subtitle,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    );
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                        _controller.onboardingPages.length,
                        (index) => Obx(() {
                          return Container(
                            margin: const EdgeInsets.all(4),
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color:
                                  _controller.selectedPageIndex.value == index
                                      ? AppColor.buttonColor
                                      : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          );
                        }),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Get.to(LoginScreen());
                      },
                      child: Text(
                        'Skip',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

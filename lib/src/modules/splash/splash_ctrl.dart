import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:smartplanner/src/modules/splash/splash_mdl.dart';

class SplashController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  var pageController = PageController();

  List<SplashModel> onboardingPages = [
    SplashModel('assets/onboard1.png', 'Create Events',
        'Now its veny eany to create, host and manage your events with celebration.'),
    SplashModel('assets/onboard2.png', 'Manage Timeline',
        'Mark your event date & time in your timeline and get remainder status.'),
    SplashModel('assets/onboard3.png', 'We provide what you want',
        'Easily pay and receive the bill for the expense for the events eventually.')
  ];
}

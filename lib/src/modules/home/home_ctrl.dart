import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'home_task_mdl.dart';

class HomeController extends GetxController {
  late final Rx<DateTime> selectedDate = Rx<DateTime>(DateTime.now());

  List<EventModel> onboardingPages = [
    EventModel('assets/event1.png', 'Create Events',
        'Plan an event so you wont miss it. We will send you notification when it will be due. You would like it.'),
    EventModel('assets/event2.png', 'Manage Timeline',
        'Post your ideas, inspirations to community and see what they are up to.'),
    EventModel('assets/event3.png', 'Best Gift for memorable events',
        'Shop some gifts, flowers, etc for event that you just have created.')
  ];

  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  var pageController = PageController();

  var items = [
    {
      'title': 'Buttercup',
      'subtitle': 'Keeping It Fun Event Planning',
      'date': 'Sep 08',
      'image': 'assets/card1.png'
    },
    {
      'title': 'Buttercup',
      'subtitle': 'Keeping It Fun Event Planning',
      'date': 'Sep 08',
      'image': 'assets/card2.png'
    },
    {
      'title': 'Buttercup',
      'subtitle': 'Keeping It Fun Event Planning',
      'date': 'Sep 08',
      'image': 'assets/card2.png'
    },
  ].obs;

  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
  }
}

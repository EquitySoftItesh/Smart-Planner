import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TabScreenController extends GetxController
    with SingleGetTickerProviderMixin {
  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Community'),
    Tab(text: 'Chat'),
    Tab(text: 'My Post'),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();

    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();

    super.onClose();
  }
}

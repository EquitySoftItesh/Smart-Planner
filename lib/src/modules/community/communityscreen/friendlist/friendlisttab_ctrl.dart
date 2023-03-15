import 'package:get/get.dart';
import 'package:flutter/material.dart';

class FriendListTabController extends GetxController
    with SingleGetTickerProviderMixin {
  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Add'),
    Tab(text: 'Requests'),
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

import 'package:get/get.dart';
import 'package:smartplanner/src/modules/community/mypost/mypost_mdl.dart';
import 'package:flutter/material.dart';

class MyPostController extends GetxController {
  var posts = <Mypost>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
  }

  final notificationController = TextEditingController();
  final notification = ['Anniversary', 'Experiences', 'Birthday', 'Party'].obs;
  final selectedNotification = 'Anniversary'.obs;

  void fetchItems() {
    final List<Mypost> fetchedItems = [
      Mypost(
        title: 'Item 1',
        description:
            'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
        date: '20 Sep 2023',
        imageUrl: 'assets/post2.png',
        category: 'Birthday',
      ),
      Mypost(
        title: 'Item 2',
        description:
            'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
        date: '09 Oct 2023',
        imageUrl: 'assets/post2.png',
        category: 'Party',
      ),
      Mypost(
        title: 'Item 3',
        description:
            'Maecenas euismod cursus ante, id rhoncus ipsum fringilla in.',
        date: '08 Nov 2023',
        imageUrl: 'assets/post2.png',
        category: 'Experiences',
      ),
    ];
    posts.assignAll(fetchedItems);
  }

  void addItem(Mypost item) {
    posts.add(item);
  }
}

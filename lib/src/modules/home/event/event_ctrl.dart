import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class EventController extends GetxController {
  int _selectedIndex = -1;

  int get selectedIndex => _selectedIndex;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final notificationController = TextEditingController();
  final notification =
      ['Before 1 Hour', 'Before 2 Hour', 'After 1 Hour', 'After 2 Hour'].obs;
  final selectedNotification = 'Before 1 Hour'.obs;

  final typeController = TextEditingController();
  final type = ['One Time', 'Two Time', 'Three Time', 'Four Time'].obs;
  final selectedType = 'One Time'.obs;

  final date = Rx<DateTime>(DateTime.now());

  void submitForm() {}

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    update();
  }

  final String time = '';

  final TextEditingController textEditingController =
      TextEditingController(text: DateFormat('hh.mm a').format(DateTime.now()));

  Future<void> pickTime() async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: Get.context!,
      initialTime: TimeOfDay.now(),
    );
    if (timeOfDay != null) {
      final DateTime dateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        timeOfDay.hour,
        timeOfDay.minute,
      );
      final DateFormat formatter = DateFormat('hh.mm a');
      final String formattedTime = formatter.format(dateTime);
      textEditingController.text = formattedTime;
    }
  }
}

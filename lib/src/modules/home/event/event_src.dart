import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/home/event/event_ctrl.dart';
import 'package:intl/intl.dart';
import 'package:smartplanner/src/modules/home/event/success/success_src.dart';

import '../../../widgets/ColorsSchemes.dart';

class EventScreen extends StatelessWidget {
  EventScreen({Key? key}) : super(key: key);

  List items = [
    {'image': 'assets/eventcard1.png', 'title': 'Birthday'},
    {'image': 'assets/eventcard2.png', 'title': 'Anniversary'},
    {'image': 'assets/eventcard3.png', 'title': 'Events'},
    {'image': 'assets/eventcard1.png', 'title': 'Birthday'},
    {'image': 'assets/eventcard1.png', 'title': 'Birthday'},
  ];

  int selected = -1;

  final EventController controller = Get.put(EventController());

  @override
  Widget build(BuildContext context) {
    Get.put(EventController());
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: SizedBox(
            height: 50,
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {
                Get.off(const SuccessScreen());
              },
              style: ElevatedButton.styleFrom(
                primary: AppColor.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Plan an Event',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '18 September 2022 at 7:00pm',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SizedBox(
          height: Get.height,
          child: Stack(
            children: [
              Container(
                height: Get.height / 2.3,
                color: const Color.fromRGBO(231, 252, 255, 1),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 0.0, left: 20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: Get.width / 4),
                                  child: Text(
                                    'Plan an Event',
                                    style: GoogleFonts.raleway(
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Choose your event type',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: SizedBox(
                              height: 220,
                              child: GetBuilder<EventController>(
                                init: EventController(),
                                builder: (controller) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: items.length,
                                    itemBuilder: (BuildContext context, index) {
                                      return InkWell(
                                        onTap: () {
                                          controller.setSelectedIndex(index);
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, bottom: 20),
                                          width: 146,
                                          height: 146,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                              color: controller.selectedIndex ==
                                                      index
                                                  ? const Color.fromRGBO(
                                                      0, 188, 212, 1)
                                                  : Colors.transparent,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Card(
                                            color: Colors.transparent,
                                            elevation: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      items[index]['image']!),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    items[index]['title'],
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.raleway(
                                                      textStyle:
                                                          const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Image.asset(
                        'assets/eventdoodle.png',
                        height: Get.height / 8,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: -100,
                      child: Image.asset(
                        'assets/eventdoodle2.png',
                        height: Get.height / 3.5,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 50,
                child: Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 21.0, top: 30),
                        child: Text(
                          'Name of Event',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 125, 141, 1),
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: TextFormField(
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Buttercup',
                            hintStyle: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            disabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 125, 141, 0.25),
                                  width: 1),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 125, 141, 0.25),
                                  width: 1),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 125, 141, 0.25),
                                  width: 1),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 125, 141, 0.25),
                                  width: 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21.0, top: 25),
                        child: Text(
                          'Description',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 125, 141, 1),
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: TextFormField(
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Keeping It Fun Event Planning',
                            hintStyle: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            disabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 125, 141, 0.25),
                                  width: 1),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 125, 141, 0.25),
                                  width: 1),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 125, 141, 0.25),
                                  width: 1),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 125, 141, 0.25),
                                  width: 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 21.0, top: 10),
                                    child: Text(
                                      'Notification',
                                      style: GoogleFonts.raleway(
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(0, 125, 141, 1),
                                        ),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Obx(
                                      () => DropdownButtonFormField(
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Color(0xFF007D8D),
                                        ),
                                        decoration: InputDecoration(
                                          hintText:
                                              'Keeping It Fun Event Planning',
                                          hintStyle: GoogleFonts.raleway(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          disabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          border: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                        ),
                                        value: controller
                                            .selectedNotification.value,
                                        onChanged: (String? newValue) {
                                          controller.selectedNotification
                                              .value = newValue!;
                                        },
                                        items: controller.notification
                                            .map<DropdownMenuItem<String>>(
                                                (String country) {
                                          return DropdownMenuItem<String>(
                                            value: country,
                                            child: Text(
                                              country,
                                              style: GoogleFonts.raleway(
                                                textStyle: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 21.0, top: 10),
                                    child: Text(
                                      'Type',
                                      style: GoogleFonts.raleway(
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(0, 125, 141, 1),
                                        ),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Obx(
                                      () => DropdownButtonFormField(
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Color(0xFF007D8D),
                                        ),
                                        decoration: InputDecoration(
                                          hintText:
                                              'Keeping It Fun Event Planning',
                                          hintStyle: GoogleFonts.raleway(
                                            textStyle: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          disabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          border: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                        ),
                                        value: controller.selectedType.value,
                                        onChanged: (String? newValue) {
                                          controller.selectedType.value =
                                              newValue!;
                                        },
                                        items: controller.type
                                            .map<DropdownMenuItem<String>>(
                                                (String country) {
                                          return DropdownMenuItem<String>(
                                            value: country,
                                            child: Text(
                                              country,
                                              style: GoogleFonts.raleway(
                                                textStyle: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 21.0, top: 10),
                                    child: Text(
                                      'Date',
                                      style: GoogleFonts.raleway(
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(0, 125, 141, 1),
                                        ),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Obx(
                                      () => TextFormField(
                                        decoration: InputDecoration(
                                          hintText:
                                              'Keeping It Fun Event Planning',
                                          hintStyle: GoogleFonts.raleway(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          disabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          border: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 125, 141, 0.25),
                                                width: 1),
                                          ),
                                          suffixIcon: SizedBox(
                                            height: 26,
                                            width: 26,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                      0, 188, 212, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              margin: const EdgeInsets.all(10),
                                              padding: const EdgeInsets.all(0),
                                              alignment: Alignment.center,
                                              child: IconButton(
                                                alignment: Alignment.center,
                                                icon: const Icon(
                                                  Icons.calendar_today,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                                padding: EdgeInsets.zero,
                                                onPressed: () {
                                                  _selectDate(context);
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        style: GoogleFonts.raleway(
                                          textStyle: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        controller: TextEditingController(
                                            text: controller.date.value != null
                                                ? DateFormat('dd, MMMM').format(
                                                    controller.date.value)
                                                : null),
                                        onTap: () {
                                          _selectDate(context);
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please select a date';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 21.0, top: 10),
                                    child: Text(
                                      'Time',
                                      style: GoogleFonts.raleway(
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(0, 125, 141, 1),
                                        ),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: TextFormField(
                                      controller:
                                          controller.textEditingController,
                                      decoration: InputDecoration(
                                        hintText: controller
                                            .textEditingController
                                            .toString(),
                                        hintStyle: GoogleFonts.raleway(
                                          textStyle: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        disabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  0, 125, 141, 0.25),
                                              width: 1),
                                        ),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  0, 125, 141, 0.25),
                                              width: 1),
                                        ),
                                        border: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  0, 125, 141, 0.25),
                                              width: 1),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  0, 125, 141, 0.25),
                                              width: 1),
                                        ),
                                        suffixIcon: SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    0, 188, 212, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            margin: const EdgeInsets.all(10),
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.access_time,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                Get.find<EventController>()
                                                    .pickTime();
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      style: GoogleFonts.raleway(
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _selectDate(BuildContext context) async {
  final EventController controller = Get.find();
  final DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: controller.date.value,
    firstDate: DateTime(2000),
    lastDate: DateTime(2030),
  );
  if (selectedDate != null) {
    controller.date.value = selectedDate;
  }
}

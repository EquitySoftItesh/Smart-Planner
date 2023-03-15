import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:smartplanner/src/modules/home/event/event_src.dart';
import 'package:smartplanner/src/widgets/app_calender.dart';
import '../../widgets/ColorsSchemes.dart';
import 'home_ctrl.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                  color: Color.fromRGBO(0, 125, 141, 0.1),
                  image: DecorationImage(
                    image: AssetImage("assets/homebackground.png"),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Planner',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/bell.png',
                            height: 25,
                            width: 21,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 229,
                        height: 40,
                        child: Text(
                          'Plan time on your calendar to achieve your results.',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Obx(() => Center(
                            child: Text(
                              DateFormat('dd MMM, yyyy')
                                  .format(controller.selectedDate.value),
                              style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 188, 212, 1)),
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      CalendarTimeline(
                        dotsColor: Colors.transparent,
                        initialDate: DateTime(2020, 4, 20),
                        firstDate: DateTime(2019, 1, 15),
                        lastDate: DateTime(2020, 11, 20),
                        onDateSelected: (date) {
                          controller.updateSelectedDate(date);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                child: Column(
                  children: [
                    if (controller.items != null)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Upcoming Event',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              Get.to(EventScreen());
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 15.0,
                              color: Color.fromRGBO(0, 125, 141, 1),
                            ),
                            label: Text(
                              'Add',
                              style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 125, 141, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    else
                      Container(),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: GetBuilder<HomeController>(
                        init: HomeController(),
                        builder: (controller) {
                          if (controller.items != null) {
                            return ListView.builder(
                              physics: const ScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: controller.items.length,
                              itemBuilder: (context, index) {
                                final item = controller.items[index];
                                return Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(item['image']!),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        height: 210,
                                      ),
                                      Positioned(
                                        right: 0,
                                        left: 0,
                                        bottom: 0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 10.0),
                                          child: Container(
                                            height: 51,
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        item['title']!,
                                                        style:
                                                            GoogleFonts.raleway(
                                                          textStyle:
                                                              const TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                        item['subtitle']!,
                                                        style:
                                                            GoogleFonts.raleway(
                                                          textStyle:
                                                              const TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 29,
                                                    width: 29,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 10.0),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 188, 212, 0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Center(
                                                      child: Image.asset(
                                                        'assets/pen.png',
                                                        height: 19,
                                                        width: 19,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 10.0),
                                          child: Container(
                                            height: 47,
                                            width: 42,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: SizedBox(
                                              height: 28,
                                              width: 19,
                                              child: Center(
                                                child: Text(
                                                  item['date']!,
                                                  style: GoogleFonts.raleway(
                                                    textStyle: const TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          0, 125, 141, 1),
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          } else {
                            return SizedBox(
                              height: Get.height / 2,
                              child: Center(
                                child: PageView.builder(
                                    physics: const ScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    controller: controller.pageController,
                                    onPageChanged: controller.selectedPageIndex,
                                    itemCount:
                                        controller.onboardingPages.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            controller.onboardingPages[index]
                                                .imageAssets,
                                            height: 93,
                                            width: 94,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            controller
                                                .onboardingPages[index].title,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            controller.onboardingPages[index]
                                                .subtitle,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: List.generate(
                                              controller.onboardingPages.length,
                                              (index) => Obx(() {
                                                return Container(
                                                  margin:
                                                      const EdgeInsets.all(4),
                                                  width: 12,
                                                  height: 12,
                                                  decoration: BoxDecoration(
                                                    color: controller
                                                                .selectedPageIndex
                                                                .value ==
                                                            index
                                                        ? AppColor.buttonColor
                                                        : Colors.grey,
                                                    shape: BoxShape.circle,
                                                  ),
                                                );
                                              }),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 45,
                                          ),
                                          SizedBox(
                                            height: 30,
                                            width: 130,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary: AppColor.buttonColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              child: const Text(
                                                'Plan an Event',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/home/event/event_src.dart';
import 'package:get/get.dart';

import '../../../../widgets/ColorsSchemes.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );

    Future.delayed(const Duration(milliseconds: 1000), () {
      if (animationController.status == AnimationStatus.forward ||
          animationController.status == AnimationStatus.completed) {
        animationController.reverse();
      } else {
        animationController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: SizedBox(
          height: 50,
          width: Get.width,
          child: ElevatedButton(
            onPressed: () {
              Get.off(EventScreen());
            },
            style: ElevatedButton.styleFrom(
              primary: AppColor.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text(
              'Done',
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Center(
                      child: Image(
                        image: const AssetImage('assets/successcalender.png'),
                        height: Get.height / 4,
                      ),
                    ),
                    Center(
                      child: CircularRevealAnimation(
                        animation: animation,
                        centerOffset: const Offset(130, 100),
                        child: Image.asset(
                          'assets/confeti.png',
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 71,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Successfully Created',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'The event has been created and notification will be sent to you before the event',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

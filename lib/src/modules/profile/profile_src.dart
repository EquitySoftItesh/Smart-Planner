import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/profile/dispute/dispute_src.dart';
import 'package:smartplanner/src/modules/profile/myorder/myorder_src.dart';
import 'package:smartplanner/src/modules/profile/personalinfo/personalInfo_src.dart';
import 'package:smartplanner/src/modules/profile/personalization/personalization_src.dart';
import 'package:smartplanner/src/modules/profile/subscription/subscription_src.dart';
import 'package:smartplanner/src/modules/profile/tutorials/tutorials_src.dart';
import 'package:smartplanner/src/modules/services/firebase/firebase_auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Profile',
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/ring.png'),
                    ),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(0, 204, 230, 0.1),
                      Color.fromRGBO(0, 154, 173, 0.1),
                    ])),
                height: 300,
                width: Get.width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    const CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Allie Grater',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' alliegrater12@gmail.com ',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Personal Information',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 249, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Get.to(PersonalInfoScreen());
                        },
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                      ListTile(
                        title: Text(
                          'My Post',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        onTap: () {},
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 249, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.post_add,
                            color: Colors.black,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                      ListTile(
                        title: Text(
                          'My Orders',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(const MyOrderScreen());
                        },
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 249, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.article,
                            color: Colors.black,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                      ListTile(
                        onTap: () {
                          Get.to(const TutorialsScreen());
                        },
                        title: Text(
                          'Tutorial',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 249, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.article,
                            color: Colors.black,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                      ListTile(
                        onTap: () {
                          Get.to(const SubscriptionScreen());
                        },
                        title: Text(
                          'Subscription',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 249, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.subscriptions,
                            color: Colors.black,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                      ListTile(
                        onTap: () {
                          Get.to(const PersonalizationScreen());
                        },
                        title: Text(
                          'Personalization',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 249, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.article,
                            color: Colors.black,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                      ListTile(
                        onTap: () {
                          Get.to(const DisputeScreen());
                        },
                        title: Text(
                          'Raise Dispute ',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 249, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.headset_mic,
                            color: Colors.black,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                      ListTile(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text(
                                'Do you really want to exit?',
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text(
                                    'CANCEL',
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: const Color.fromRGBO(
                                            0, 188, 212, 1)),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    AuthController.authInstance.signOut();
                                  },
                                  child: Text(
                                    'ACCEPT',
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: const Color.fromRGBO(
                                            0, 188, 212, 1)),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        title: Text(
                          'Logout',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 249, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.logout,
                            color: Colors.black,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

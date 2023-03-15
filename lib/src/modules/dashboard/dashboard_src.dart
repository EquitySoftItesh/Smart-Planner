import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/community/community_src.dart';
import 'package:get/get.dart';
import 'package:smartplanner/src/modules/profile/profile_src.dart';
import 'package:smartplanner/src/modules/vendor/vendor_src.dart';
import 'package:smartplanner/src/widgets/app_bottombar.dart';

import '../home/home_src.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _pageController = PageController(initialPage: 0);

  final List<Widget> bottomBarPages = [
    Home(),
    CommunityScreen(),
    VendorScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        extendBody: true,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
              bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
        bottomNavigationBar: AnimatedNotchBottomBar(
          pageController: _pageController,
          color: const Color.fromRGBO(225, 251, 254, 1),
          showLabel: false,
          notchColor: context.theme.primaryColor,
          itemLabelStyle: const TextStyle(fontSize: 10),
          bottomBarItems: [
            BottomBarItem(
              inActiveItem: Text(
                'Home',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF005E6A),
                  ),
                ),
              ),
              activeItem: const Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
            ),
            BottomBarItem(
              inActiveItem: Text(
                'Community',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF005E6A),
                  ),
                ),
              ),
              activeItem: Center(
                child: Image.asset(
                  'assets/comicon.png',
                  height: 27,
                  width: 29,
                ),
              ),
              itemLabel: 'Community',
            ),
            BottomBarItem(
              inActiveItem: Text(
                'Shop',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF005E6A),
                  ),
                ),
              ),
              activeItem: Center(
                child: Image.asset(
                  'assets/shopicon.png',
                  height: 20,
                  width: 16,
                ),
              ),
            ),
            BottomBarItem(
              inActiveItem: Text(
                'Profile',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF005E6A),
                  ),
                ),
              ),
              activeItem: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
          onTap: (index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
          },
        ));
  }
}

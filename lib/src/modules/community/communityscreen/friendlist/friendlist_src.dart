import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/community/communityscreen/friendlist/add/add_src.dart';
import 'package:smartplanner/src/modules/community/communityscreen/friendlist/friendlisttab_ctrl.dart';
import 'package:smartplanner/src/modules/community/communityscreen/friendlist/request/request_src.dart';

class FriendListScreen extends StatelessWidget {
  FriendListScreen({Key? key}) : super(key: key);

  final FriendListTabController _tabx = Get.put(FriendListTabController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Add to your Friend List',
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Search by username or email',
                    prefixIcon: Container(
                      margin: const EdgeInsets.all(16),
                      padding: EdgeInsets.zero,
                      child: Image.asset(
                        'assets/searchicon.png',
                        height: 16,
                        width: 16,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TabBar(
              labelStyle: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              indicatorColor: const Color.fromRGBO(0, 125, 141, 1),
              controller: _tabx.controller,
              tabs: _tabx.myTabs,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabx.controller,
                children: [
                  AddScreen(),
                  RequestScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

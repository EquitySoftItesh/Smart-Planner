import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/community/chat/chat_src.dart';
import 'package:smartplanner/src/modules/community/communityscreen/communityscreen_src.dart';
import 'package:smartplanner/src/modules/community/communityscreen/friendlist/friendlist_src.dart';
import 'package:smartplanner/src/modules/community/mypost/mypost_src.dart';

import 'community_ctrl.dart';

class CommunityScreen extends StatelessWidget {
  CommunityScreen({Key? key}) : super(key: key);

  final TabScreenController _tabx = Get.put(TabScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Post & Chat',
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Get.to(FriendListScreen());
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.asset(
                  'assets/personicon.png',
                  height: 29,
                  width: 29,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(217, 217, 217, 0),
                  Color.fromRGBO(0, 188, 212, 0.2)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: TabBar(
                labelStyle: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.only(bottom: 5),
                indicator: CircleTabIndicator(
                    color: const Color.fromRGBO(0, 125, 141, 1), radius: 4),
                controller: _tabx.controller,
                tabs: _tabx.myTabs,
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabx.controller,
          children: [
            const CommunityTabScreen(),
            ChatScreen(),
            MyPostScreen(),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}

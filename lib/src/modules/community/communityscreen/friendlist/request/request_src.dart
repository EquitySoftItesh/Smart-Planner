import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../friendlist_ctrl.dart';

class RequestScreen extends StatelessWidget {
  RequestScreen({Key? key}) : super(key: key);

  final FriendController _friendController = Get.put(FriendController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Obx(
          () => ListView.builder(
            itemCount: _friendController.friends.length,
            itemBuilder: (context, index) {
              final friend = _friendController.friends[index];
              return Column(
                children: [
                  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(friend.profilePictureUrl),
                      ),
                      title: Text(
                        friend.name,
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      trailing: SizedBox(
                        width: 80,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 27,
                              height: 27,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(15, 146, 28, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Icon(
                                Icons.done,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              width: 27,
                              height: 27,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(208, 0, 0, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )),
                  const Divider(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/community/chat/chatdetail/chatdetail_src.dart';
import 'package:smartplanner/src/modules/community/chat/group/group.dart';

import 'chat_ctrl.dart';
import 'chat_mdl.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  final ChatController controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(217, 217, 217, 0),
                Color.fromRGBO(0, 188, 212, 0.2)
              ], begin: Alignment.topRight, end: Alignment.topRight),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 26.0, left: 20.0, right: 20.0, bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 0),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 0),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.white, width: 0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.zero,
                          hintText: 'Search',
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
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const CreateGroupScreen());
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 188, 212, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/grouppersonicon.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Obx(() {
        if (controller.users.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: controller.users.length,
            itemBuilder: (_, index) {
              final user = controller.users[index];
              return UserWidget(user: user);
            },
          );
        }
      }),
    );
  }
}

class UserWidget extends StatelessWidget {
  final User user;

  const UserWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(user.imageUrl),
      ),
      title: Text(
        user.name,
        style: GoogleFonts.raleway(
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            user.lastMessage,
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '${user.lastMessageTime.hour}:${user.lastMessageTime.minute}',
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Get.to(const ChatDetailScreen());
      },
    );
  }
}

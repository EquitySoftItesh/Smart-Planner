import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/community/communityscreen/friendlist/friendlist_mdl.dart';
import '../friendlist_ctrl.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);

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
              return InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        MyDialogBox(popup: _friendController.friends[index]),
                  );
                },
                child: Column(
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
                      trailing: Container(
                        width: 63,
                        height: 24,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 188, 212, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'View Profile',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyDialogBox extends StatelessWidget {
  Friend? popup;

  MyDialogBox({Key? key, required this.popup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SizedBox(
          height: 239,
          child: Stack(
            children: <Widget>[
              Card(
                child: SizedBox(
                  height: 239.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        popup!.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Color.fromRGBO(0, 188, 212, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        popup!.email,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Color.fromRGBO(0, 188, 212, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Are you sure you want to add this user to your friend list?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 125,
                            height: 41,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,
                                splashFactory: NoSplash.splashFactory,
                                primary: const Color.fromRGBO(0, 0, 0, 0.2),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 125,
                            height: 41,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,
                                splashFactory: NoSplash.splashFactory,
                                elevation: 0,
                                primary: const Color.fromRGBO(0, 188, 212, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Send Request',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              FractionalTranslation(
                translation: const Offset(0.0, -0.3),
                child: Align(
                  alignment: const FractionalOffset(0.5, 0.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage(popup!.profilePictureUrl),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

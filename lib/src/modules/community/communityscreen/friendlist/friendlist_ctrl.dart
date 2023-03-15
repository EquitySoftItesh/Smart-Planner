import 'package:get/get.dart';

import 'friendlist_mdl.dart';

class FriendController extends GetxController {
  final friends = <Friend>[
    Friend(
      name: 'John Doe',
      profilePictureUrl: 'assets/profilepicture1.png',
      email: 'johndoe@example.com',
    ),
    Friend(
      name: 'Jane Doe',
      profilePictureUrl: 'assets/profilepicture2.png',
      email: 'janedoe@example.com',
    ),
    Friend(
      name: 'Bob Smith',
      profilePictureUrl: 'assets/profilepicture3.png',
      email: 'bobsmith@example.com',
    ),
  ].obs;
}

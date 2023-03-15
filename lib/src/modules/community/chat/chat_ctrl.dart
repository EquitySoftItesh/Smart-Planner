import 'package:get/get.dart';
import 'chat_mdl.dart';

class ChatController extends GetxController {
  var users = <User>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() {
    final List<User> fetchedUsers = [
      User(
        id: '1',
        name: 'Alice',
        imageUrl: 'assets/person1.png',
        lastMessage: 'Hi, how are you?',
        lastMessageTime: DateTime.now(),
      ),
      User(
        id: '2',
        name: 'Bob',
        imageUrl: 'assets/person2.png',
        lastMessage: 'I am fine, thank you.',
        lastMessageTime: DateTime.now().subtract(const Duration(minutes: 10)),
      ),
      User(
        id: '3',
        name: 'Charlie',
        imageUrl: 'assets/person3.png',
        lastMessage: 'Are you coming to the party tonight?',
        lastMessageTime: DateTime.now().subtract(const Duration(hours: 2)),
      ),
    ];
    users.assignAll(fetchedUsers);
  }
}

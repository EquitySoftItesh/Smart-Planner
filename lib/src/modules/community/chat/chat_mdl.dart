class User {
  final String id;
  final String name;
  final String imageUrl;
  final String lastMessage;
  final DateTime lastMessageTime;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.lastMessage,
    required this.lastMessageTime,
  });
}

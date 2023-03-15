class Task {
  String title;
  String time;
  bool isDone;

  Task({
    required this.title,
    required this.time,
    this.isDone = false,
  });
}

class EventModel {
  final imageAssets;
  final title;
  final subtitle;

  EventModel(this.imageAssets, this.title, this.subtitle);
}

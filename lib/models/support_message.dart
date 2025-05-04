class Message {
  final String text;
  final DateTime time;
  final bool isSentByMe;
  final bool isRead;

  Message({
    required this.text,
    required this.time,
    required this.isSentByMe,
    required this.isRead,
  });
}

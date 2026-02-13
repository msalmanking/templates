class ChatModel {
  final String name;
  final String message;
  final int unread;

  ChatModel({required this.name, required this.message, required this.unread});
}

final List<ChatModel> chatList = [
  ChatModel(
    name: 'Salman',
    message: 'I just finished the task. Let me know what you think. ',
    unread: 1,
  ),
  ChatModel(
    name: 'Haley James',
    message: 'Stand up for what you believe in...',
    unread: 9,
  ),
  ChatModel(
    name: 'Nathan Scott',
    message:
        'One day you’re seventeen and planning for someday. And then quietly and without...',
    unread: 0,
  ),
  ChatModel(
    name: 'Brooke Davis',
    message: 'I am who I am. No excuses.',
    unread: 2,
  ),
  ChatModel(
    name: 'Jamie Scott',
    message: 'Some people are a little different...',
    unread: 0,
  ),
  ChatModel(
    name: 'Marvin McFadden',
    message: 'Last night in the NBA...',
    unread: 0,
  ),

  ChatModel(
    name: 'Antwon Taylor',
    message: 'Meet me at the Rivercourt',
    unread: 0,
  ),

  ChatModel(
    name: 'Jake Jagielski',
    message:
        'In your life, youre gonna go to some great places, and do some wonderful things.',
    unread: 0,
  ),
];

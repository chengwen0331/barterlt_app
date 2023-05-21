
import 'package:barterlt_app/model/user.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  final User user;

  const ChatScreen({super.key, required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late List<Widget> tabchildren;
  String maintitle = "Messenger";

  @override
    void initState() {
      super.initState();
      print("Chat");
    }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Messenger'),
          backgroundColor: Colors.amber,
        ),
        body: const Center(
          child: Text('Messenger'),
        ),
      ),
    );
  }
}
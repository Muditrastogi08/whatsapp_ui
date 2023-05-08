import 'package:flutter/material.dart';
import 'package:uisecond/Pages/chat_detail_page.dart';
import 'package:uisecond/models/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.message), onPressed: () {}),
      body: ListView.builder(
        itemCount: chatdata.length,
        itemBuilder: (context, index) => Column(
          children: [
            const Divider(
              height: 10,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.teal,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
              ),
              title: Text(
                chatdata[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                chatdata[index].message,
                style: const TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                chatdata[index].currentTime.toString(),
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatDetailpage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

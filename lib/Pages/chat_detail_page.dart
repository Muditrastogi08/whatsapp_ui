import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uisecond/Pages/message_page.dart';

class ChatDetailpage extends StatefulWidget {
  const ChatDetailpage({super.key});

  @override
  State<ChatDetailpage> createState() => _ChatDetailpageState();
}

class _ChatDetailpageState extends State<ChatDetailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text('Rahul'),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: Messagepage(),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.teal, width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0),
                      ),
                      prefixIcon: const Icon(Icons.emoji_emotions_outlined),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.rotate(
                            angle: pi / 5,
                            child: const Icon(Icons.attach_file),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.camera_alt),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.send),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      hintText: 'Type a message',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

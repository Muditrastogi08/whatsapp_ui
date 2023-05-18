import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uisecond/Presentation/message/screen/message_screen.dart';

class ChatDetailpage extends StatelessWidget {
  const ChatDetailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Column(
                children: [
                  Text('Rahul'),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Online',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 0,
                  child: Text(
                    'View Contact',
                  ),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'Media,links,and docs',
                  ),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'Search',
                  ),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'More',
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: Messagepage(),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                SizedBox(
                  width: 260,
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0),
                      ),
                      prefixIcon: const Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.rotate(
                            angle: pi / 5,
                            child: const Icon(Icons.attach_file,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.camera_alt, color: Colors.grey),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.send, color: Colors.grey),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  backgroundColor: const Color(0xff075e54),
                  onPressed: () {},
                  child: const Icon(
                    Icons.mic,
                    size: 30,
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     shape: const CircleBorder(),
                //     // padding: const EdgeInsets.all(10),
                //     backgroundColor: const Color(0xff075e54),
                //   ),
                //   child: const Icon(Icons.mic),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

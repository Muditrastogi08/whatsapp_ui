import 'package:flutter/material.dart';
import 'package:uisecond/models/call_model.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.call), onPressed: () {}),
      body: ListView.builder(
        itemCount: calldata.length,
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
                calldata[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                    child: calldata[index].callType,
                  ),
                  Text(calldata[index].currentTime),
                ],
              ),
              trailing: Icon(
                Icons.call,
                size: 25,
                color: Theme.of(context).primaryColor,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

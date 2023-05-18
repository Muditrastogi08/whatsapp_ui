import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class Messagepage extends StatefulWidget {
  const Messagepage({super.key});

  @override
  State<Messagepage> createState() => _MessagepageState();
}

class _MessagepageState extends State<Messagepage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Bubble(
              alignment: Alignment.center,
              color: const Color.fromRGBO(212, 234, 244, 1),
              child: const Text(
                'TODAY',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11),
              ),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              showNip: false,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('How are you?', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: const Text('Hi, developer!'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              showNip: false,
              child: const Text('Well, see for yourself'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              showNip: false,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('How are you?', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: const Text('Hi, developer!'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              showNip: false,
              child: const Text('Well, see for yourself'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              showNip: false,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('How are you?', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: const Text('Hi, developer!'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              showNip: false,
              child: const Text('Well, see for yourself'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              showNip: false,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('How are you?', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: const Text('Hi, developer!'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              showNip: false,
              child: const Text('Well, see for yourself'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              showNip: false,
              color: const Color.fromRGBO(225, 255, 199, 1),
              child: const Text('How are you?', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: const Text('Hi, developer!'),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 2),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              showNip: false,
              child: const Text('Well, see for yourself'),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

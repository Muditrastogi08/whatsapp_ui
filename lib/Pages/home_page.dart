import 'package:flutter/material.dart';
import 'package:uisecond/Pages/call_page.dart';
import 'package:uisecond/Pages/chat_page.dart';
import 'package:uisecond/Pages/status_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.camera_alt),
    ),
    const Tab(text: 'Chats'),
    const Tab(text: 'Status'),
    const Tab(text: 'Calls')
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: topTabs,
          indicatorColor: Colors.white,
        ),
        title: const Text('Whatsapp'),
      ),

      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('Camera'),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      // floatingActionButton: _getFab(),
    );
  }
}

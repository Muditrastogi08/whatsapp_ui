import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uisecond/Presentation/calls/screen/call_screen.dart';
import 'package:uisecond/Presentation/chat/screen/chat_screen.dart';

import 'package:uisecond/Provider/home_provider.dart';
import 'package:uisecond/camera/screens/camera_screen.dart';

import '../../status/screen/status_page.dart';

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
      icon: Icon(Icons.group),
    ),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS')
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    Provider.of<Homeprovider>(context, listen: false).fetchCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CameraScreen(),
                ),
              );
            },
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 0,
                  child: Text(
                    'New group',
                  ),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'New broadcast',
                  ),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'Linked devices',
                  ),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'Settings',
                  ),
                ),
              ];
            },
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
        title: const Text('WhatsApp'),
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

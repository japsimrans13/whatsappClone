import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/ChatPage.dart';
import 'package:flutter_whatsapp_clone/pages/UploadCaption.dart';
import 'package:flutter_whatsapp_clone/pages/UploadHashtag.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.cloud_upload_outlined)),
    // Later call this as a list adn fetch these titles from server.
    Tab(text: 'CATS'),
    Tab(text: 'DOGS'),
    Tab(icon: Icon(Icons.cloud_upload)),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search button clicked');
              }),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('more button clicked');
              })
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          UploadCaption(),
          ChartPage(),
          Text('To be updated'),
          UploadHashtag(),
        ],
      ),
    );
  }
}

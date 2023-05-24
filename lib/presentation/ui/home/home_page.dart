import 'package:aero_delivery/presentation/ui/home/add/airport_from_page.dart';
import 'package:aero_delivery/presentation/ui/home/messenger/messenger_page.dart';
import 'package:aero_delivery/presentation/ui/home/profile/profile_page.dart';
import 'package:aero_delivery/presentation/ui/home/search/search_page.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar/tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  final pages = [
    const SearchPage(),
    const AirportFromPage(),
    const MessengerPage(),
    const ProfilePage()
  ];

  final titlesPage = ["Home", "Publish", "Messages", "Profile"];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF618985),
        automaticallyImplyLeading: false,
        title: Text(titlesPage[_pageIndex]),
      ),
      body: IndexedStack(
        index: _pageIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFEDF4ED),
        selectedItemColor: const Color(0xFFF79F79),
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        items: tabs,
      ),
    );
  }
}

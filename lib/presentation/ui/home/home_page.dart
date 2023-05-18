import 'package:aero_delivery/presentation/ui/home/add/add_trip_page.dart';
import 'package:aero_delivery/presentation/ui/home/messenger/messenger_page.dart';
import 'package:aero_delivery/presentation/ui/home/profile/profile_page.dart';
import 'package:aero_delivery/presentation/ui/home/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  final pages = [
    const SearchPage(),
    const AddTripPage(),
    const MessengerPage(),
    const ProfilePage()
  ];

  final titlesPage = ["Search", "Add", "Messenger", "Profile"];
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
        backgroundColor: const Color(0xFF618985),
        automaticallyImplyLeading: false,
        title: Text(titlesPage[_pageIndex]),
      ),
      body: IndexedStack(
        index: _pageIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color(0xFFF79F79)),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_alt, color: Color(0xFFF79F79)),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger, color: Color(0xFFF79F79)),
            label: 'messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFFF79F79),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

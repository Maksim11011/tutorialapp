import 'package:flutter/material.dart';
import 'package:tutorialapp/widgets/friends_list/friends_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TutorialApp',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          Text(
            'Мой профиль',
          ),
          FriendsListWidget(),
          Text(
            'Группы',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Друзья',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nearby_error),
            label: 'Группы',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}

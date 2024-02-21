import 'package:flutter/material.dart';
import 'package:tutorialapp/widgets/friends_list/friens_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Мой профиль',
    ),
    FriendsListWidget(),
    Text(
      'Группы',
    ),
  ];

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
      body: Center(
        child: _widgetOptions[_selectedTab],
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

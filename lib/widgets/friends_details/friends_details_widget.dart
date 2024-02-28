import 'package:flutter/material.dart';

import 'friends_details_main_info_widget.dart';

class FriendsDetailsWidget extends StatefulWidget {
  final int friendId;
  const FriendsDetailsWidget({
    super.key,
    required this.friendId,
  });

  @override
  State<FriendsDetailsWidget> createState() => _FriendsDetailsWidgetState();
}

class _FriendsDetailsWidgetState extends State<FriendsDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Friend Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ColoredBox(
        color: const Color.fromRGBO(24, 23, 27, 1.0),
        child: ListView(
          children: const [
            FriendsDetailsMainInfoWidget(),
          ],
        ),
      ),
    );
  }
}

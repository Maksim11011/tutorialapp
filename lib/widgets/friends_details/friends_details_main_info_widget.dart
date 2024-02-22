import 'package:flutter/material.dart';
import 'package:tutorialapp/resources/resources.dart';

class FriendsDetailsMainInfoWidget extends StatelessWidget {
  const FriendsDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopPosterWidget(),
        _FriendNameWidget(),
      ],
    );
  }
}

class TopPosterWidget extends StatelessWidget {
  const TopPosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Image(image: AssetImage(AppImages.poster)),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 35, horizontal: 120),
          child: Image(image: AssetImage(AppImages.profile)),
        ),
      ],
    );
  }
}

class _FriendNameWidget extends StatelessWidget {
  const _FriendNameWidget();

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

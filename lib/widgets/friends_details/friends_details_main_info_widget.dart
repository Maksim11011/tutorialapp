import 'package:flutter/material.dart';
import 'package:tutorialapp/resources/resources.dart';

class FriendsDetailsMainInfoWidget extends StatelessWidget {
  const FriendsDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopPosterWidget(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: _FriendNameWidget(),
        ),
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
    return Column(
      children: [
        const Text(
          'Иван Иванов',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Text(
          'Какой то статус',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.location_history,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  'Санкт-Петербург',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.info,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              Text(
                'Подробнее',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Row(children: [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(Icons.message_outlined),
                ),
                Text(
                  'Сообщение',
                )
              ]),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.grey.shade800),
                ),
                child: const Icon(Icons.phone)),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.grey.shade800),
                ),
                child: const Icon(Icons.person_add)),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.grey.shade800),
                ),
                child: const Icon(Icons.more_horiz)),
          ],
        )
      ],
    );
  }
}

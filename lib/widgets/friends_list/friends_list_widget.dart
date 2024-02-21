import 'package:flutter/material.dart';
import 'package:tutorialapp/resources/resources.dart';

class Friend {
  final String imageName;
  final String friendName;
  final String cityName;

  Friend({
    required this.imageName,
    required this.friendName,
    required this.cityName,
  });
}

class FriendsListWidget extends StatefulWidget {
  const FriendsListWidget({super.key});

  @override
  State<FriendsListWidget> createState() => _FriendsListWidgetState();
}

class _FriendsListWidgetState extends State<FriendsListWidget> {
  final _friends = [
    Friend(
      imageName: AppImages.profile,
      friendName: 'Жанна Ивансонова',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Евгений Песня',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Виктор Толмут',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Иван Ураган',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Олежа Мазов',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Максим Небылица',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Анастасия Изюм',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Александ Ольга',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Сергей Сережа',
      cityName: 'Санкт-Петербург',
    ),
    Friend(
      imageName: AppImages.profile,
      friendName: 'Латышский Стрелок',
      cityName: 'Санкт-Петербург',
    ),
  ];

  var _filteredFriends = <Friend>[];

  final _searchController = TextEditingController();

  void _searchFriends() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredFriends = _friends.where((Friend friend) {
        return friend.friendName.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredFriends = _friends;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredFriends = _friends;
    _searchController.addListener(_searchFriends);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredFriends.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final friend = _filteredFriends[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 2))
                        ]),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(image: AssetImage(friend.imageName)),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                friend.friendName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                friend.cityName,
                                style: const TextStyle(color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                    ),
                  )
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Поиск..',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: const OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}

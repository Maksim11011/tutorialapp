import 'package:flutter/material.dart';
import 'package:tutorialapp/Theme/app_colors.dart';
import 'widgets/auth/auth_widget.dart';
import 'widgets/friends_details/friends_details_widget.dart';
import 'widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/auth': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
        '/main_screen/Friends_Details': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments;
          if (arguments is int) {
            return FriendsDetailsWidget(friendId: arguments);
          } else {
            return const FriendsDetailsWidget(friendId: 0);
          }
        },
      },
      initialRoute: '/auth',
    );
  }
}

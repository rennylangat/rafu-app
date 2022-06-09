import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rafu_app/screens/chats/chat_screen.dart';
import 'package:rafu_app/screens/home_screen/home_screen.dart';
import 'package:rafu_app/screens/home_screen/ui/home_main.dart';
import 'package:rafu_app/screens/notifications/notifications_screen.dart';
import 'package:rafu_app/screens/profile/my_profile.dart';
import 'package:rafu_app/screens/shops/my_shops.dart';
import 'package:rafu_app/utils/colors.dart';

class MainScreen extends StatefulWidget {
  final String ancestor;
  const MainScreen({Key? key, required this.ancestor}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _pages = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      widget.ancestor == "login" ? const HomeScreen() : const HomeMainScreen(),
      const MyShopsScreen(),
      const NotificationsScreen(),
      const ChatScreen(),
      const MyProfile()
    ];
  }

  onNavTapped(index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      floatingActionButton: _currentPage == 0
          ? FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                // Navigator.pushNamed(context, '/add_shop');
              },
              child: const Icon(
                Icons.add,
                size: 32,
              ))
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: DotNavigationBar(
        dotIndicatorColor: kDarkGreenColor,
        enableFloatingNavBar: true,
        paddingR: const EdgeInsets.only(right: 10, left: 10),
        marginR: const EdgeInsets.only(right: 10, left: 10),
        borderRadius: 25,
        itemPadding: const EdgeInsets.all(14.0),
        backgroundColor: Colors.white,
        items: [
          DotNavigationBarItem(icon: const Icon(MdiIcons.homeOutline)),
          DotNavigationBarItem(
              icon: const Icon(
            MdiIcons.storeOutline,
          )),
          DotNavigationBarItem(
              icon: const Icon(
            MdiIcons.bellBadgeOutline,
          )),
          DotNavigationBarItem(
              icon: const Icon(
            MdiIcons.chatOutline,
          )),
          DotNavigationBarItem(
              icon: const Icon(
            MdiIcons.accountOutline,
          )),
        ],
        currentIndex: _currentPage,
        onTap: onNavTapped,
      ),
      body: _pages[_currentPage],
    );
  }
}

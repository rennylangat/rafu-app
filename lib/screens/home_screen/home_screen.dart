import 'package:flutter/material.dart';
import 'package:rafu_app/screens/home_screen/ui/invite_shops.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const InviteShop();
  }
}

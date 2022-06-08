import 'package:flutter/material.dart';
import 'package:rafu_app/utils/colors.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainBgColor,
    );
  }
}

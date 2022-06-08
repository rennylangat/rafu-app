import 'package:flutter/material.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';

class InviteShop extends StatelessWidget {
  const InviteShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Invite Shops",
                style: TextStyle(
                  fontSize: getProportionalScreenHeight(30),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: getProportionalScreenHeight(10),
            )
          ],
        ),
      )),
    );
  }
}

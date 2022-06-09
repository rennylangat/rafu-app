import 'package:flutter/material.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Niaje",
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(40),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Bintiful Logistics",
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(40),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: getProportionalScreenHeight(40),
                ),
                const StoreOptions(
                  title: "Sell Products",
                  img: "gold_cart.png",
                ),
                const StoreOptions(
                  title: "Pickups",
                  img: "pickups.png",
                ),
                const StoreOptions(
                  title: "Deliveries",
                  img: "deliveries.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StoreOptions extends StatelessWidget {
  final String title;
  final String img;
  const StoreOptions({
    Key? key,
    required this.title,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionalScreenHeight(135),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 4, 8),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: getProportionalScreenHeight(36),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: Image.asset("assets/images/$img"),
            )
          ],
        ),
      ),
    );
  }
}

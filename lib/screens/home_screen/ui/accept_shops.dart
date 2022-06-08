import 'package:flutter/material.dart';
import 'package:rafu_app/screens/home_screen/ui/view_shop.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';

class AcceptShops extends StatelessWidget {
  const AcceptShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      appBar: AppBar(
        backgroundColor: kMainBgColor,
        elevation: 0,
        leadingWidth: getPropotionalScreenWidth(30),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: getPropotionalScreenWidth(30),
              height: getProportionalScreenHeight(30),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Accept Shops",
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(30),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(30),
              ),
              const ShopContainer(),
              const ShopContainer(),
              const ShopContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopContainer extends StatelessWidget {
  const ShopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const ViewShop()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: getProportionalScreenHeight(20)),
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
          child: Row(
            children: [
              Image.asset(
                "assets/icons/nimo_logo.png",
                width: getPropotionalScreenWidth(74),
                height: getProportionalScreenHeight(74),
              ),
              SizedBox(
                width: getPropotionalScreenWidth(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nimo Naturals",
                    style: TextStyle(
                      fontSize: getProportionalScreenHeight(21),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: getProportionalScreenHeight(5),
                  ),
                  Text(
                    "Beauty Shop",
                    style: TextStyle(
                      fontSize: getProportionalScreenHeight(14),
                    ),
                  ),
                  SizedBox(
                    height: getProportionalScreenHeight(15),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Requested to join :",
                      style: TextStyle(
                          color: const Color(0xFF656565),
                          fontSize: getProportionalScreenHeight(10)),
                      children: const [
                        TextSpan(
                          text: "12/1/2021 ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "at "),
                        TextSpan(
                          text: "12:00 PM",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

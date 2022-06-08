import 'package:flutter/material.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';

class ViewShop extends StatelessWidget {
  const ViewShop({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black87.withOpacity(0.05),
                          blurRadius: 5,
                          spreadRadius: 0.5,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/icons/nimo_logo.png",
                      width: getPropotionalScreenWidth(55),
                      height: getProportionalScreenHeight(55),
                    ),
                  ),
                  SizedBox(
                    width: getPropotionalScreenWidth(15),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nimo Naturals",
                        style: TextStyle(
                          fontSize: getProportionalScreenHeight(28),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: getProportionalScreenHeight(5),
                      ),
                      Text(
                        "Beauty Shop",
                        style: TextStyle(
                          fontSize: getProportionalScreenHeight(22),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: getProportionalScreenHeight(30),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "Shelf space Size",
                                style: TextStyle(
                                    fontSize: getProportionalScreenHeight(15),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Type A",
                                style: TextStyle(
                                  fontSize: getProportionalScreenHeight(14),
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF656565),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "Amount Paid",
                                style: TextStyle(
                                    fontSize: getProportionalScreenHeight(15),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Ksh. 2000/mp",
                                style: TextStyle(
                                  fontSize: getProportionalScreenHeight(14),
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF656565),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Rent Due",
                              style: TextStyle(
                                  fontSize: getProportionalScreenHeight(15),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "14/01/22",
                              style: TextStyle(
                                fontSize: getProportionalScreenHeight(14),
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF656565),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(15),
              ),
              Text(
                "Products",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: getProportionalScreenHeight(24)),
              ),
              SizedBox(
                height: getProportionalScreenHeight(236),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: getPropotionalScreenWidth(165),
                      height: getProportionalScreenHeight(10),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 10,
                              top: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "10",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: getProportionalScreenHeight(15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 20,
                              child: Image.asset(
                                "assets/images/product_1.png",
                                width: getPropotionalScreenWidth(125),
                                height: getProportionalScreenHeight(90),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

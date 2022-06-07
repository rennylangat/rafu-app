import 'package:flutter/material.dart';
import 'package:rafu_app/screens/authentication/registration/enter_biz_location.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';

class BizLocation extends StatelessWidget {
  const BizLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Your Business\nLocation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: getProportionalScreenHeight(30),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(20),
              ),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: kLightGreenColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(15),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Are you ",
                    style: TextStyle(
                      fontSize: getProportionalScreenHeight(16),
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Currently ",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "at your shop? If not choose ",
                            style: TextStyle(
                                fontSize: getProportionalScreenHeight(16),
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            children: const [
                              TextSpan(
                                text: "Enter Manually",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(50),
              ),
              Container(
                width: SizeConfig.screenWidth * 0.5,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Allow",
                    style: TextStyle(
                      fontSize: getProportionalScreenHeight(24),
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(25),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EnterBusinessLocation(),
                    ),
                  );
                },
                child: Text(
                  "Enter Manually",
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

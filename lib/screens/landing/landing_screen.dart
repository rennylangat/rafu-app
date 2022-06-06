import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rafu_app/screens/authentication/registration/resgistration_step_one.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Manage your\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionalScreenHeight(24),
                      fontWeight: FontWeight.bold,
                    ),
                    children: const [
                      TextSpan(
                        text: " Rent a shelf\n",
                        style: TextStyle(color: kPrimaryColor),
                        children: [
                          TextSpan(
                              text: "  with Ease",
                              style: TextStyle(color: Colors.black)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(20),
              ),
              Center(
                child: SvgPicture.asset("assets/icons/biz_illustration.svg"),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegistrationStepOne(),
                    ),
                  );
                },
                child: Container(
                  width: SizeConfig.screenWidth * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Get started for Free!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionalScreenHeight(16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(20),
              ),
              Text(
                "I Already have an account",
                style: TextStyle(
                    fontSize: getProportionalScreenHeight(16),
                    color: kPrimaryColor),
              ),
              SizedBox(
                height: getProportionalScreenHeight(15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

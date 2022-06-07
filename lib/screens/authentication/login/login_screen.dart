import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';
import 'package:rafu_app/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/logo.svg",
                  ),
                  Image.asset("assets/icons/rafu_logo.png"),
                ],
              )),
              SizedBox(
                height: getProportionalScreenHeight(20),
              ),
              Center(
                child: Text(
                  "Welcome Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(44),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(10),
              ),
              Center(
                child: Text(
                  "Login to your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(18),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(40),
              ),
              Text(
                "Phone number",
                style: TextStyle(
                  fontSize: getProportionalScreenHeight(18),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(8),
              ),
              const EditTextField(hintText: ""),
              SizedBox(
                height: getProportionalScreenHeight(20),
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: getProportionalScreenHeight(18),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(8),
              ),
              const EditTextField(hintText: ""),
              SizedBox(
                height: getProportionalScreenHeight(10),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: kDarkGreenColor,
                    fontSize: getProportionalScreenHeight(18),
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

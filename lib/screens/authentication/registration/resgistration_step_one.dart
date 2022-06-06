import 'package:flutter/material.dart';
import 'package:rafu_app/screens/authentication/registration/biz_location.dart';
import 'package:rafu_app/utils/size_config.dart';

class RegistrationStepOne extends StatefulWidget {
  const RegistrationStepOne({Key? key}) : super(key: key);

  @override
  State<RegistrationStepOne> createState() => _RegistrationStepOneState();
}

class _RegistrationStepOneState extends State<RegistrationStepOne> {
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Welcome to Rafu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(25),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text(
                  "To get started we will ask some few questions to get your account set up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(14),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(40),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text(
                  "What are your full names?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getPropotionalScreenWidth(30)),
                ),
              ),
              SizedBox(
                height: getProportionalScreenHeight(40),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontSize: getPropotionalScreenWidth(16),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF1F1F1),
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.1),
                      width: 0.1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.1),
                      width: 0.1,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(12.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.1),
                      width: 0.1,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BizLocation(),
                  ),
                ),
                child: Container(
                  width: SizeConfig.screenWidth * 0.6,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: getPropotionalScreenWidth(20),
                        )),
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rafu_app/screens/authentication/registration/resgistration_step_one.dart';
import 'package:rafu_app/screens/authentication/registration/shelves_categories.dart';
import 'package:rafu_app/utils/size_config.dart';
import 'package:rafu_app/widgets/text_field.dart';

class EnterBusinessLocation extends StatefulWidget {
  const EnterBusinessLocation({Key? key}) : super(key: key);

  @override
  State<EnterBusinessLocation> createState() => _EnterBusinessLocationState();
}

class _EnterBusinessLocationState extends State<EnterBusinessLocation> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
              height: getProportionalScreenHeight(32),
            ),
            const Text("Location"),
            SizedBox(
              height: getProportionalScreenHeight(5),
            ),
            const EditTextField(
              hintText: "Moi Avenue, Bihi Towers",
            ),
            SizedBox(
              height: getProportionalScreenHeight(32),
            ),
            const Text("Shop Number"),
            SizedBox(
              height: getProportionalScreenHeight(5),
            ),
            const EditTextField(hintText: "Stall H35"),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ShelvesCategories(),
                    ),
                  );
                },
                child: const ContinueButton(title: "Continue"),
              ),
            ),
            const Spacer()
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Type A",
            //       style: TextStyle(
            //         fontSize: getProportionalScreenHeight(20),
            //         fontWeight: FontWeight.w800,
            //       ),
            //     ),
            //     const Icon(
            //       Icons.delete,
            //       color: Colors.red,
            //     )
            //   ],
            // )
          ],
        ),
      )),
    );
  }
}

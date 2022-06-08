import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rafu_app/screens/home_screen/ui/accept_shops.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';
import 'package:rafu_app/widgets/continue_button.dart';

class InviteShop extends StatelessWidget {
  const InviteShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 36, 32, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            Text(
              "Note",
              style: TextStyle(
                fontSize: getProportionalScreenHeight(16),
                color: kNoteTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: getProportionalScreenHeight(10),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kNoteTextColor.withOpacity(0.12),
                border: Border.all(
                  color: kNoteTextColor,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 14, 22, 14),
                child: Text(
                  "Copy the link below and share it with your clients to add them to your shop list",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionalScreenHeight(15),
                    color: kNoteTextColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionalScreenHeight(20),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Icon(
                        MdiIcons.contentCopy,
                        color: kDarkGreenColor,
                      ),
                      SizedBox(
                        height: getProportionalScreenHeight(3),
                      ),
                      Text(
                        "Copy",
                        style: TextStyle(
                            fontSize: getProportionalScreenHeight(14),
                            color: kDarkGreenColor,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: getProportionalScreenHeight(56),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                      child: Text(
                        "https://www.figma.com/file/5blQd7NqT0S",
                        style: TextStyle(
                          color: kGreyTextColor,
                          fontSize: getProportionalScreenHeight(14),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionalScreenHeight(50),
            ),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AcceptShops(),
                  ),
                ),
                child: const ContinueButton(title: "Accept Shops"),
              ),
            )
          ],
        ),
      )),
    );
  }
}

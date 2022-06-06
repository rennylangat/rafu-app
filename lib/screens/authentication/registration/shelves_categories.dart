import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rafu_app/screens/authentication/registration/resgistration_step_one.dart';
import 'package:rafu_app/utils/colors.dart';
import 'package:rafu_app/utils/size_config.dart';

class ShelvesCategories extends StatefulWidget {
  const ShelvesCategories({Key? key}) : super(key: key);

  @override
  State<ShelvesCategories> createState() => _ShelvesCategoriesState();
}

class _ShelvesCategoriesState extends State<ShelvesCategories> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Categories of\n shelves you have",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: getProportionalScreenHeight(30),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionalScreenHeight(25),
                ),
                const ShelfCategory(
                  title: "Type A",
                ),
                SizedBox(
                  height: getProportionalScreenHeight(10),
                ),
                const ShelfCategory(
                  title: "Type B",
                ),
                SizedBox(
                  height: getProportionalScreenHeight(10),
                ),
                const ShelfCategory(
                  title: "Type C",
                ),
                SizedBox(
                  height: getProportionalScreenHeight(20),
                ),
                const Center(child: ContinueButton(title: "Continue"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShelfCategory extends StatelessWidget {
  final String title;
  const ShelfCategory({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: getProportionalScreenHeight(18),
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Icon(
                Icons.delete,
                color: Colors.red,
              )
            ],
          ),
          SizedBox(
            height: getProportionalScreenHeight(32),
          ),
          const Text("Proce of the Shelf"),
          SizedBox(
            height: getProportionalScreenHeight(5),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter the price i.e 2000",
              hintStyle: TextStyle(
                fontSize: getPropotionalScreenWidth(14),
              ),
              filled: true,
              fillColor: const Color(0xFFF1F1F1),
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
          SizedBox(
            height: getProportionalScreenHeight(20),
          ),
          const Text("Number of shelves"),
          SizedBox(
            height: getProportionalScreenHeight(5),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "How many of this type do you have",
              hintStyle: TextStyle(
                fontSize: getPropotionalScreenWidth(14),
              ),
              filled: true,
              fillColor: const Color(0xFFF1F1F1),
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
          SizedBox(
            height: getProportionalScreenHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                MdiIcons.imageMultiple,
                color: kDarkGreenColor,
              ),
              SizedBox(
                width: getPropotionalScreenWidth(5),
              ),
              Text(
                "Add Shelf Images",
                style: TextStyle(
                    color: kDarkGreenColor,
                    fontSize: getProportionalScreenHeight(14)),
              )
            ],
          ),
          SizedBox(
            height: getProportionalScreenHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getPropotionalScreenWidth(100),
                height: getProportionalScreenHeight(85),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/shelf_image1.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: getPropotionalScreenWidth(5),
              ),
              Container(
                width: getPropotionalScreenWidth(100),
                height: getProportionalScreenHeight(85),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/shelf_image2.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

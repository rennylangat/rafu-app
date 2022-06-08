import 'package:flutter/material.dart';
import 'package:rafu_app/utils/size_config.dart';

class ContinueButton extends StatelessWidget {
  final String title;
  const ContinueButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionalScreenHeight(16),
          ),
        ),
      ),
    );
  }
}

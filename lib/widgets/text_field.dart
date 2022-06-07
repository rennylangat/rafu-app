import 'package:flutter/material.dart';
import 'package:rafu_app/utils/size_config.dart';

class EditTextField extends StatelessWidget {
  final String hintText;
  const EditTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
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
    );
  }
}

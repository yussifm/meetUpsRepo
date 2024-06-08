import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  InputFieldWidget({
    super.key,
    required this.titleTxtController,
    required this.hintTxt,
    this.maxLine = 1,
    this.validator,
  });

  final TextEditingController titleTxtController;
  final String hintTxt;
  final int maxLine;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: titleTxtController,
      maxLines: maxLine,
      validator: validator,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
          hintText: hintTxt,
          hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}

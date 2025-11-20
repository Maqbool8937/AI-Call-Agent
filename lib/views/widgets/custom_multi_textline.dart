import 'package:flutter/material.dart';

class CustomMultilineTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomMultilineTextField({
    super.key,
    required this.controller,
    this.hintText = 'Enter text here...',
  });

  @override
  Widget build(BuildContext context) {
    final mediquery = MediaQuery.of(context).size;
    return Container(
      height: mediquery.height * 0.17,
      width: mediquery.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        maxLines: null, // auto expand
        minLines: 3, // initial height
        style: const TextStyle(fontSize: 14, color: Color(0xff000000)),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xff000000)),
          border: InputBorder.none,
          isDense: true,
        ),
      ),
    );
  }
}

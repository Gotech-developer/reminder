import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  const Customtextfield({super.key, this.hintText, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 35,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final BorderSide? borderSide;
  final TextStyle? style;
  const Customtextfield({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.borderSide,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style,
      cursorHeight: 35,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: borderSide ?? BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: borderSide ?? BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      ),
    );
  }
}

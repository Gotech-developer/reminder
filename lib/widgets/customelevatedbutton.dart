import 'package:flutter/material.dart';

class Customelevatedbutton extends StatelessWidget {
  final Function() onPressed;
  final Widget? child;
  const Customelevatedbutton({super.key, required this.onPressed, this.child});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: child);
  }
}

import 'package:flutter/material.dart';
import 'package:reminder/screens/bottomscreen.dart';

void main() {
  runApp(Reminder());
}

class Reminder extends StatelessWidget {
  const Reminder({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          titleSmall: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: Bottomscreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/firebase_options.dart';
import 'package:reminder/screens/bottomscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:reminder/screens/homescreen.dart';
import 'package:reminder/screens/signinscreen.dart';
import 'package:reminder/screens/signupscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Bottomscreen(),
    );
  }
}

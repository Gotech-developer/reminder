import 'package:flutter/material.dart';
import 'package:reminder/widgets/customelevatedbutton.dart';
import 'package:reminder/widgets/customtextfield.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});
  @override
  State<Signinscreen> createState() => SigninscreenState();
}

class SigninscreenState extends State<Signinscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'Reminder',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            SizedBox(height: 8),
            Customtextfield(
              hintText: 'email',
              borderSide: BorderSide(color: Colors.white),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            Customtextfield(
              hintText: 'password',
              borderSide: BorderSide(color: Colors.white),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            Customelevatedbutton(onPressed: () {}, child: Text('Sign in')),
          ],
        ),
      ),
    );
  }
}

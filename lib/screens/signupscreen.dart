import 'package:flutter/material.dart';
import 'package:reminder/widgets/customelevatedbutton.dart';
import 'package:reminder/widgets/customtextfield.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});
  @override
  State<Signupscreen> createState() => SignupscreenState();
}

class SignupscreenState extends State<Signupscreen> {
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

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Customtextfield(
                hintText: 'password',
                borderSide: BorderSide(color: Colors.white),
                style: TextStyle(color: Colors.white),
              ),
            ),

            Customtextfield(
              hintText: 'Confirm password',
              borderSide: BorderSide(color: Colors.white),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            Customelevatedbutton(onPressed: () {}, child: Text('Sign up')),
          ],
        ),
      ),
    );
  }
}

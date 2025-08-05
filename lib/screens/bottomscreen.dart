import 'package:flutter/material.dart';
import 'package:reminder/screens/createreminderscreen.dart';
import 'package:reminder/screens/homescreen.dart';
import 'package:reminder/screens/profilescreen.dart';

class Bottomscreen extends StatefulWidget {
  const Bottomscreen({super.key});
  @override
  State<Bottomscreen> createState() => BottomScreenState();
}

class BottomScreenState extends State<Bottomscreen> {
  int currentindex = 0;
  // List<Widget> screens = [
  //   Homescreen(),
  //   Createreminderscreen(),
  //   Profilescreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: [Homescreen(), Createreminderscreen(), Profilescreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'create'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}

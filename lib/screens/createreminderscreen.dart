import 'dart:ui';

import 'package:flutter/material.dart';

class Createreminderscreen extends StatefulWidget {
  const Createreminderscreen({super.key});
  @override
  State<Createreminderscreen> createState() => CreatereminderscreenState();
}

class CreatereminderscreenState extends State<Createreminderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Reminder'), centerTitle: true),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  children: [
                    Text('date', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Text('Time', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          TextField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: 'e.g buy groceries',
              hintStyle: TextStyle(color: Colors.white),
              fillColor: Colors.black,
              filled: true,

              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
          Expanded(
            child: TextField(
              maxLines: null,
              minLines: null,

              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 8, right: 16, left: 16),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              maximumSize: Size(300, 40),
              minimumSize: Size(100, 40),
            ),
            onPressed: () {},
            child: Text('Create', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

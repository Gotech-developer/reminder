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
      appBar: AppBar(title: Text('Create Reminder')),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text('date'),
                        SizedBox(width: 20),
                        Text('Time'),
                      ],
                    ),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              TextField(
                maxLines: 100,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

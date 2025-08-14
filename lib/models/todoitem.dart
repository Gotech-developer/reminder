import 'package:flutter/material.dart';

class Todoitem {
  String? date;
  String? time;
  String title;
  final String body;
  Todoitem({
    required this.date,
    required this.time,
    required this.title,
    required this.body,
  });

  factory Todoitem.fromMap(Map<String, dynamic> map) {
    return Todoitem(
      date: map['date'],
      time: map['time'],
      title: map['title'],
      body: map['description'],
    );
  }
  Map<String, dynamic> toMap() {
    return {'date': date, 'time': time, 'title': title, 'description': body};
  }
}

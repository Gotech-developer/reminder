import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reminder/models/todoitem.dart';

class Firestoreservices {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> sendToFireStore(
    String? date,
    String? time,
    String title,
    String body,
  ) async {
    final user = auth.currentUser;
    if (user != null) {
      final userId = user.uid;
      firebaseFirestore
          .collection('users')
          .doc(userId)
          .set(
            Todoitem(date: date, time: time, title: title, body: body).toMap(),
          );
    }
  }
}

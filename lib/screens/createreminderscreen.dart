import 'package:flutter/material.dart';
import 'package:reminder/services/firestoreservices.dart';
import 'package:intl/intl.dart';

class Createreminderscreen extends StatefulWidget {
  const Createreminderscreen({super.key});
  @override
  State<Createreminderscreen> createState() => CreatereminderscreenState();
}

class CreatereminderscreenState extends State<Createreminderscreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  //pickDate function
  Future<void> pickDate() async {
    final now = DateTime.now();
    DateTime? picked = await showDatePicker(
      helpText: 'Choose a date',
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            datePickerTheme: DatePickerThemeData(
              backgroundColor: Colors.blue,
              headerBackgroundColor: Colors.white,
              dayStyle: TextStyle(color: Colors.white),
            ),
          ),
          child: child!,
        );
      },
      context: context,
      firstDate: now,
      initialDate: now,
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
      print('selectedDate: $selectedDate');
    }
  }

  //pickTime Funtion
  Future<void> pickedTime() async {
    final now = TimeOfDay.now();
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: now,
    );
    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
      print('selectedTime: $selectedTime');
    }
  }

  Future<void> sentToFireStore() async {
    final selectedDateFormat = DateFormat().format(selectedDate);
    final selectedTimeFormat = selectedTime.format(context);

    final title = titleController.text.trim().toLowerCase();
    final body = bodyController.text.trim().toLowerCase();
    final firestoreservices = Firestoreservices();
    await firestoreservices.sendToFireStore(
      selectedDateFormat,
      selectedTimeFormat,
      title,
      body,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Reminder'), centerTitle: true),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () => pickDate(),
                child: Text(
                  DateFormat('yyyy-MM-dd').format(selectedDate),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 8),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () => pickedTime(),
                child: Text(
                  selectedTime.format(context),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          TextField(
            controller: titleController,
            cursorColor: Colors.black,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: 'Title',
              hintStyle: TextStyle(color: Colors.white),
              fillColor: Colors.blueGrey,

              filled: true,
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
          Expanded(
            child: TextField(
              controller: bodyController,
              maxLines: null,
              minLines: null,

              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                hintText: 'body',
                hintStyle: TextStyle(color: Colors.black, fontSize: 16),
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

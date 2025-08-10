class Todoitem {
   String date;
   int time;
   String title;
  final String decription;
  Todoitem({
    required this.date,
    required this.time,
    required this.title,
    required this.decription,
  });

factory Todoitem.fromMap(Map<String, dynamic>map){
  return 
  Todoitem(date: map['date'], time: map['time'] , title:['title'], decription: ['description'])
}
}
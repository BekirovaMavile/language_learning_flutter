import 'package:language_learning_flutte/data/models/task.dart';

class Lesson {
  int id;
  String name;
  // int progress;
  List<Task> tasks;


  Lesson({
    required this.id,
    required this.name,
    // required this.progress,
    required this.tasks,
  });
}
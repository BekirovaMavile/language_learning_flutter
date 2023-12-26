import 'package:language_learning_flutte/data/models/word.dart';

enum TaskType {
  listenAndWrite,
  matchTranslation,
  chooseTranslationByImage,
  speakWord,
}

class Task {
  int id;
  String description;
  TaskType type;
  List<Word> wordsToLearn;

  Task({
    required this.id,
    required this.description,
    required this.type,
    required this.wordsToLearn,
  });
}
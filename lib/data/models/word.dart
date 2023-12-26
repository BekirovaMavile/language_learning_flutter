class Word {
  int id;
  String word;
  String image;
  String translation;
  bool isLearned;
  bool isAnswerCorrect;

  Word({
    required this.id,
    required this.word,
    required this.image,
    required this.translation,
    this.isLearned = false,
    this.isAnswerCorrect = false,
  });
}
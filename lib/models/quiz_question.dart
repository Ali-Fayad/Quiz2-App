class QuizQuestion {
  final List<String> shuffledAnswers;

  QuizQuestion({required String text, required List<String> answers, required String correctAnswer})
    : shuffledAnswers = List.of(answers)..shuffle();

  get text => null;

  String? get correctAnswer => null;

  get answers => null;
}

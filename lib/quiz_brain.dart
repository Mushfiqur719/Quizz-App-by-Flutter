import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('KABUL is the capital of AFGHANISTAN.', true),
    Question('KATHMANDU is the capital of BHUTAN.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Mount Everest is the tallest mountain in the world.', true),
    Question('Sheikh Hasina is the president of Bangladesh.', false),
    Question('The human skeleton is made up of less than 100 bones.', false),
    Question('Pacific Ocean is the biggest ocean on earth', true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is a Blue Whale.',
        true),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Mushfiqur Rahim has most double centuries amongst Bangladeshi Batsmans',
        true),
    Question('The human body has four lungs.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}

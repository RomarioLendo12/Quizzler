import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        questionText: 'Dinding adalah sinonim tembok.', questionAnswer: true),
    Question(
        questionText: 'Madu adalah hasil fermentasi dari susu.',
        questionAnswer: false),
    Question(
        questionText: 'Search and Rescue adalah kepanjangan dari SAR.',
        questionAnswer: true),
    Question(
        questionText: 'Kapten Pattimura lahir diManado.',
        questionAnswer: false),
    Question(
        questionText: 'Kota Bogor mendapat julukan kota udang',
        questionAnswer: false),
    Question(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    Question(
        questionText: 'Bahasa Indonesia dari tutup/keluar adalah STOP.',
        questionAnswer: false),
    Question(
        questionText: '600 kodi setara dengan 24 rim.', questionAnswer: true),
    Question(
        questionText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionAnswer: false),
    Question(
        questionText: 'Perubahan benda padat menjadi gas disebut mengembun.',
        questionAnswer: false),
    Question(
        questionText: 'Elon Musk merupakan CEO Google', questionAnswer: false),
    Question(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: true),
    Question(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: true),
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

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}

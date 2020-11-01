import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  /*Previously in our main.dart we were able to change the correct answer as questionBank
  object was public, so we are now changing it to private and this will allow us to
  not change the value. To access the value we will require a getter method*/

  List<Question> _questionBank = [
    Question(q: 'Sasuke is powerful than Naruto', a: false),
    Question(q: 'Saukra is weak', a: false),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Naruto is from Uchiha clan.', a: false)
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length -1){
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}

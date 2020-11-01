import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  /*Previously in our main.dart we were able to change the correct answer as questionBank
  object was public, so we are now changing it to private and this will allow us to
  not change the value. To access the value we will require a getter method*/

  List<Question> _questionBank = [
    Question(questionText: 'Sasuke is powerful than Naruto', questionAnswer: false),
    Question(questionText: 'Saukra is weak', questionAnswer: false),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(questionText: 'Naruto is from Uchiha clan.', questionAnswer: false)
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length -1){
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  bool isFinished(){
    if(_questionNumber >= _questionBank.length -1){
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void resetQuiz() {
    _questionNumber = 0;
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}

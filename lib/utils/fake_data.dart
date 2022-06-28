import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quiz_app/models/question_data.dart';

class FakeData {
  static List<QuestionData> getMyQuestions() {
    List<QuestionData> questionData = [];

    for (int i = 0; i < 10; i++) {
      questionData.add(
        QuestionData(
          questionText: "To’g’ri e’lon qilngan o’zgaruvchini toping",
          trueAnswer: 4,
          variant1: "const var t = 12 questionData[currentQuestionIndex].variant3 questionData[currentQuestionIndex].variant3",
          variant2: "const int t = 5.0",
          variant3: "final int t = 36 questionData[currentQuestionIndex].variant3 questionData[currentQuestionIndex].variant3",
          variant4: "dynamic t = 12.36 questionData[currentQuestionIndex].variant3 questionData[currentQuestionIndex].variant3 questionData[currentQuestionIndex].variant3 questionData[currentQuestionIndex].variant3 questionData[currentQuestionIndex].variant3 questionData[currentQuestionIndex].variant3",
        ),
      );
    }

    return questionData;
  }

  static getMyToast({required String message}) => Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey.shade300,
        textColor: Colors.black,
        fontSize: 16.0,
      );
}

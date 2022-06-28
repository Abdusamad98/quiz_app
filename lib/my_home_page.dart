import 'package:flutter/material.dart';
import 'package:quiz_app/global_wigets/my_custom_appbar.dart';
import 'package:quiz_app/global_wigets/question_item.dart';
import 'package:quiz_app/global_wigets/variant_item.dart';
import 'package:quiz_app/models/question_data.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/fake_data.dart';
import 'package:quiz_app/utils/styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<QuestionData> questionData = FakeData.getMyQuestions();
  int currentQuestionIndex = 0;
  int variantIndex = 0;
  List<int> selectedValues =
      []; // Har qadamda tanlangan javob indexni saqalaydi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_E5E5E5,
      appBar: const MyCustomAppBar(
        title: 'Test your knowledge',
        appBarColor: MyColors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  QuestionItem(
                    questionIndex: currentQuestionIndex,
                    questionText:
                        questionData[currentQuestionIndex].questionText,
                  ),
                  VariantItem(
                    isSelected: variantIndex == 1,
                    variantText: questionData[currentQuestionIndex].variant1,
                    onTap: () {
                      setState(() {
                        variantIndex = 1;
                      });
                    },
                  ),
                  VariantItem(
                    isSelected: variantIndex == 2,
                    variantText: questionData[currentQuestionIndex].variant2,
                    onTap: () {
                      setState(() {
                        variantIndex = 2;
                      });
                    },
                  ),
                  VariantItem(
                    isSelected: variantIndex == 3,
                    variantText: questionData[currentQuestionIndex].variant3,
                    onTap: () {
                      setState(() {
                        variantIndex = 3;
                      });
                    },
                  ),
                  VariantItem(
                    isSelected: variantIndex == 4,
                    variantText: questionData[currentQuestionIndex].variant4,
                    onTap: () {
                      setState(() {
                        variantIndex = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (variantIndex == 0) {
                    FakeData.getMyToast(message: "Javob variantini tanlang");
                  } else {
                    if (currentQuestionIndex < 9) {
                      currentQuestionIndex++;
                      selectedValues.add(variantIndex);
                      print(selectedValues);
                      variantIndex = 0;
                    } else {
                      selectedValues.add(variantIndex);
                      FakeData.getMyToast(
                          message:
                              "Savollar tugadi, To'g'ri javoblar soni : ${getTrueQuestionsCount(selectedIndexes: selectedValues)}");
                    }
                  }
                });
              },
              child: Text(
                "NEXT",
                style: MyTextStyles.oswaldBold700
                    .copyWith(fontSize: 20, color: MyColors.C_2FB209),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: MyColors.white, elevation: 5),
            ),
          )
        ],
      ),
    );
  }
}

int getTrueQuestionsCount({required List<int> selectedIndexes}) {
  var questions = FakeData.getMyQuestions();
  int trueCount = 0;
  for (int i = 0; i < 10; i++) {
    if (questions[i].trueAnswer == selectedIndexes[i]) trueCount++;
  }
  return trueCount;
}

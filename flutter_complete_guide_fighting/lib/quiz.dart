import 'package:flutter/material.dart';
import 'answer.dart';
import 'question_text.dart';

///如果编译期提示不及时，可以重启vscode来解决！！！
class Quiz extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  //字典<>内用英文逗号分隔，不是冒号！！！
  final List<Map<String, Object>> questionsArr;

  final int questionIndex;
  final void Function(int) answerQuestion;

  //Named parameters can't start with an underscore
  Quiz(
      {@required this.questionsArr,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionText(
          questionsArr[questionIndex]["question"],
        ),

        //不能使用局部变量，因为此处接收的是 Widget
        // var _answerArr = questionsArr[questionIndex]["answer"] as List<String>

        ///...:数组解包出来单个元素；toList：数组map后的对象默认不是数组，需要转为数组
        ...(questionsArr[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answerDic) {
          return Answer(
              () => answerQuestion(answerDic["score"]), answerDic["content"]);
        }).toList(),
      ],
    );
  }
}

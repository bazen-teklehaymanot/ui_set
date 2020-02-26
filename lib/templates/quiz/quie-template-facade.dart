import 'package:flutter/material.dart';
import 'package:ui_set/templates/quiz/routes/routes.dart';
import 'package:ui_set/templates/quiz/screens/quiz-type-list.dart';
import 'package:ui_set/templates/templates.base.dart';

class QuizTemplateFacade extends TemplateBase{
  @override
  Map<String, Widget Function(BuildContext)> getTemplateRoutes(BuildContext context) {
    Map<String, Widget Function(BuildContext)> templateRoutes = {
      QuizTemplateRoutes.QUIZ_TYPE_LIST_SCREEN: (context)=> QuizTypeListScreen()
    };

    return templateRoutes;
  }

  @override
  Widget getTemplateWidget(BuildContext context){
    return RaisedButton(
      child: Text('Quiz'),
      onPressed: ()=>Navigator.pushNamed(context, QuizTemplateRoutes.QUIZ_TYPE_LIST_SCREEN),
    );
  }

}
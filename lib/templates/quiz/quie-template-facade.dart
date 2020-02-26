import 'package:flutter/material.dart';
import 'package:ui_set/templates/quiz/routes/routes.dart';
import 'package:ui_set/templates/quiz/screens/quiz-type-list.dart';
import 'package:ui_set/templates/templates.base.dart';

class QuizTemplateFacade extends TemplateBase{
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  Map<String, Widget Function(BuildContext)> getTemplateRoutes(BuildContext context) {
    Map<String, Widget Function(BuildContext)> templateRoutes = {
      Routes.QUIZ_TYPE_LIST_SCREEN: (context)=> QuizTypeListScreen()
    };

    return templateRoutes;
  }

}
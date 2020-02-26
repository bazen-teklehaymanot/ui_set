import 'package:flutter/material.dart';
import 'package:ui_set/templates/quiz/constants/assets.dart';
import 'package:ui_set/templates/quiz/constants/routes.dart';
import 'package:ui_set/templates/quiz/screens/quiz-type-list.dart';
import 'package:ui_set/templates/template-metadata.dart';
import 'package:ui_set/templates/templates.base.dart';

class QuizTemplateFacade extends TemplateBase{
  @override
  Map<String, Widget Function(BuildContext)> getTemplateRoutes(BuildContext context) {
    Map<String, Widget Function(BuildContext)> templateRoutes = {
      QuizTemplateRoutes.quizTypeListScreen: (context)=> QuizTypeListScreen()
    };

    return templateRoutes;
  }

  @override
  TemplateMetadata getTemplateWidget()=>TemplateMetadata(
    name:'Quiz',
    description:'Simple Quiz module',
    indexRoute: QuizTemplateRoutes.quizTypeListScreen,
    icon:QuizTemplateAssets.templateIcon1
  );

}
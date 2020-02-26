import 'package:flutter/material.dart';
import 'package:ui_set/screens/module-display-screen.dart';
import 'package:ui_set/templates/quiz/quie-template-facade.dart';

class AppInitializer{
  Map<String, Widget Function(BuildContext)> loadApplicationIndex(BuildContext context){
    return { '/':(context)=>ModuleDisplayScreen() };
  }
  Map<String, Widget Function(BuildContext)> loadTemplateRoutes(BuildContext context){
    QuizTemplateFacade quizTemplateFacade = QuizTemplateFacade();
    return quizTemplateFacade.getTemplateRoutes(context);
  }
}
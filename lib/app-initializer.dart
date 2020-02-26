import 'package:flutter/material.dart';
import 'package:ui_set/screens/module-display-screen.dart';
import 'package:ui_set/templates/auth/auth-template-facade.dart';
import 'package:ui_set/templates/quiz/quie-template-facade.dart';

class AppInitializer{
  final QuizTemplateFacade quizTemplateFacade = QuizTemplateFacade();
  final AuthTemplateFacade authTemplateFacade = AuthTemplateFacade();
  
  Map<String, Widget Function(BuildContext)> loadApplicationIndex(BuildContext context){
    return { '/':(context)=>ModuleDisplayScreen() };
  }
  Map<String, Widget Function(BuildContext)> loadTemplateRoutes(BuildContext context){
    return {
      ...quizTemplateFacade.getTemplateRoutes(context),
      ...authTemplateFacade.getTemplateRoutes(context)
      };
  }

  List<Widget> getTemplateWidgets(BuildContext context){
    List<Widget> templateWidgets = List();
    templateWidgets.add(authTemplateFacade.getTemplateWidget(context));
    templateWidgets.add(quizTemplateFacade.getTemplateWidget(context));
    return templateWidgets;
  }

}
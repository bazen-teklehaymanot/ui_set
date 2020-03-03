import 'package:flutter/material.dart';
import 'package:ui_set/screens/module-display-screen.dart';
import 'package:ui_set/templates/auth/auth-template-facade.dart';
import 'package:ui_set/templates/flutter-widgets/widget_template_facade.dart';
import 'package:ui_set/templates/quiz/quie-template-facade.dart';
import 'package:ui_set/widget/template-card.dart';

class AppInitializer{
  final QuizTemplateFacade quizTemplateFacade = QuizTemplateFacade();
  final AuthTemplateFacade authTemplateFacade = AuthTemplateFacade();
  final WidgetTemplateFacade widgetTemplateFacade = WidgetTemplateFacade();
  
  Map<String, Widget Function(BuildContext)> loadApplicationIndex(BuildContext context){
    return { '/':(context)=> SafeArea(child: ModuleDisplayScreen(),) };
  }
  Map<String, Widget Function(BuildContext)> loadTemplateRoutes(BuildContext context){
    return {
      ...quizTemplateFacade.getTemplateRoutes(context),
      ...authTemplateFacade.getTemplateRoutes(context),
      ...widgetTemplateFacade.getTemplateRoutes(context)
      };
  }

  List<Widget> getTemplateWidgets(BuildContext context){
    List<Widget> templateWidgets = List();

    templateWidgets.add(TemplateCard(authTemplateFacade.getTemplateMetaData()));
    templateWidgets.add(TemplateCard(quizTemplateFacade.getTemplateMetaData()));
    templateWidgets.add(TemplateCard(widgetTemplateFacade.getTemplateMetaData()));
    return templateWidgets;
  }

}
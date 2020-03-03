import 'package:flutter/material.dart';
import 'package:ui_set/templates/flutter-widgets/constants/assets.dart';
import 'package:ui_set/templates/flutter-widgets/constants/routes.dart';
import 'package:ui_set/templates/flutter-widgets/screens/widget-list-screen.dart';
import 'package:ui_set/templates/template-metadata.dart';
import 'package:ui_set/templates/templates.base.dart';

class WidgetTemplateFacade extends TemplateBase{
  @override
  Map<String, Widget Function(BuildContext)> getTemplateRoutes(BuildContext context) {
    return {
      WidgetTempateRoutes.widgetListScreen: (context)=> WidgetListScreen()
    };
  }

  @override
  TemplateMetadata getTemplateMetaData() =>TemplateMetadata(
    name:'Quiz',
    description:'Simple Quiz module',
    indexRoute: WidgetTempateRoutes.widgetListScreen,
    icon:WidgetTemplateAssets.templateIcon
  );

}
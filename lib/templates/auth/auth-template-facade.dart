import 'package:flutter/material.dart';
import 'package:ui_set/templates/auth/constants/assets.dart';
import 'package:ui_set/templates/auth/screens/auth-list-screen.dart';
import 'package:ui_set/templates/auth/screens/auth-screen-one.dart';
import 'package:ui_set/templates/template-metadata.dart';
import 'package:ui_set/templates/templates.base.dart';

import 'constants/routes.dart';

class AuthTemplateFacade extends TemplateBase{
  @override
  Map<String, Widget Function(BuildContext)> getTemplateRoutes(BuildContext context) {
    Map<String, Widget Function(BuildContext)> templateRoutes = {
      AuthTemplateRoutes.authListScreen:(context)=>AuthListScreen(),
      AuthTemplateRoutes.authScreenOne: (context)=>AuthScreenOne()
    };
    return templateRoutes;
  }

  @override
  TemplateMetadata getTemplateMetaData()=> TemplateMetadata(
    name: 'Authentication',
    description: 'Simple Auth UI/UX',
    icon: AuthAssets.templateIcon,
    indexRoute: AuthTemplateRoutes.authListScreen
  );
}
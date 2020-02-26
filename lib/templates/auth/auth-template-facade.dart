import 'package:flutter/material.dart';
import 'package:ui_set/templates/auth/routes/routes.dart';
import 'package:ui_set/templates/auth/screens/auth-list-screen.dart';
import 'package:ui_set/templates/templates.base.dart';

class AuthTemplateFacade extends TemplateBase{
  @override
  Map<String, Widget Function(BuildContext)> getTemplateRoutes(BuildContext context) {
    Map<String, Widget Function(BuildContext)> templateRoutes = {
      AuthTemplateRoutes.AUTH_LIST_SCREEN:(context)=>AuthListScreen()
    };
    return templateRoutes;
  }

  @override
  Widget getTemplateWidget(BuildContext context){
    return RaisedButton(
      child: Text('Auth Screens'),
      onPressed: ()=>Navigator.pushNamed(context, AuthTemplateRoutes.AUTH_LIST_SCREEN),
    );
  }
}
import 'package:flutter/material.dart';

abstract class TemplateBase{
   Map<String,Widget Function(BuildContext)> getTemplateRoutes(BuildContext context);
   Widget getTemplateWidget(BuildContext context)=>Container();
}
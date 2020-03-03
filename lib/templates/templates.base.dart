import 'package:flutter/material.dart';
import 'package:ui_set/templates/template-metadata.dart';

abstract class TemplateBase{
   Map<String,Widget Function(BuildContext)> getTemplateRoutes(BuildContext context);
   TemplateMetadata getTemplateMetaData();
}
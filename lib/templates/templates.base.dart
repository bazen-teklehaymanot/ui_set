import 'package:flutter/material.dart';

abstract class TemplateBase extends StatelessWidget{
   Map<String,Widget Function(BuildContext)> getTemplateRoutes(BuildContext context);
}
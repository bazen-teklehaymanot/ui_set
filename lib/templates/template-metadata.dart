import 'package:flutter/material.dart';

class TemplateMetadata{
  final String name;
  final String indexRoute;
  final String description;
  final String icon;
  TemplateMetadata({
    @required this.name,
    @required this.description,
    @required this.indexRoute,
    @required this.icon
  });
}
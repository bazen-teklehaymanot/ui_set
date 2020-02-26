import 'package:flutter/material.dart';
import 'package:ui_set/templates/template-metadata.dart';

class TemplateCard extends StatelessWidget {
  final TemplateMetadata templateMetadata;
  TemplateCard(this.templateMetadata);
  @override
  Widget build(BuildContext context) {
    return Card(
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset(templateMetadata.icon,height: 100,),
              ),
              FlatButton(
                child: Text('Select'),
                onPressed: () {
                  Navigator.pushNamed(context, templateMetadata.indexRoute);
                },
              )
            ],
          ),
        );
  }
}

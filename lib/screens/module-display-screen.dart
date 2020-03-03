import 'package:flutter/material.dart';
import 'package:ui_set/app-initializer.dart';

class ModuleDisplayScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final AppInitializer initializer = AppInitializer();
    return Scaffold(
      appBar: AppBar(
        title: Text('Module Container'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[...initializer.getTemplateWidgets(context)],
          )
        ],
      ),
      );
  }
}

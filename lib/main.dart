import 'package:flutter/material.dart';
import 'package:ui_set/app-initializer.dart';

void main()=> runApp(App());


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var initializer = AppInitializer();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        ...initializer.loadApplicationIndex(context),
        ...initializer.loadTemplateRoutes(context)
        }
    );
  }
}

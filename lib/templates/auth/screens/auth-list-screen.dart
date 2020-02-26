import 'package:flutter/material.dart';
import 'package:ui_set/templates/auth/constants/routes.dart';

class AuthListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auth Screens list'),),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.lock_outline),),
            title: Text('Auth Screen 1'),
            subtitle: Text('Queck Bee'),
            onTap: ()=>Navigator.pushReplacementNamed(context, AuthTemplateRoutes.authScreenOne),
          )
      ],),
    );
  }
}
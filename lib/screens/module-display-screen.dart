import 'package:flutter/material.dart';
import 'package:ui_set/templates/quiz/routes/routes.dart';

class ModuleDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module Container'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            child: Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('Quiz App'),
                  onPressed: ()=>Navigator.pushNamed(context, Routes.QUIZ_TYPE_LIST_SCREEN),
                )
              ],
            ),
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        elevation: 2.0,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        child: Row(
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text('Home1'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Home2'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Home3'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Home4'),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

import 'package:flutter/material.dart';

class WidgetListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              expandedHeight: 200,
              flexibleSpace: Text('Widgets List Container'),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 150,
                  color: Colors.red,
                ),
                Container(
                  height: 150,
                  color: Colors.green,
                ),
                Container(
                  height: 150,
                  color: Colors.yellow,
                ),
                Container(
                  height: 150,
                  color: Colors.grey,
                ),
                Container(
                  height: 150,
                  color: Colors.lightBlue,
                ),
              ]),
            ),
            SliverGrid.count(
              crossAxisCount: 4,
              children: <Widget>[
                Container(
                  height: 150,
                  color: Colors.red,
                ),
                Container(
                  height: 150,
                  color: Colors.green,
                ),
                Container(
                  height: 150,
                  color: Colors.yellow,
                ),
                Container(
                  height: 150,
                  color: Colors.grey,
                ),
                Container(
                  height: 150,
                  color: Colors.lightBlue,
                ),
              ], 
            )
          ],
        ),
      ),
    );
  }
}

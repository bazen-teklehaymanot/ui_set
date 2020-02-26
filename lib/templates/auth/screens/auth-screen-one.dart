import 'package:flutter/material.dart';

class AuthScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double computedWidth = width * .9;
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height:45,
            margin: EdgeInsets.only(bottom:5),
            width: computedWidth,
            child: FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text('Sign in with Email'),
              onPressed: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                            height:45,
                  width: computedWidth / 2,
                  padding: EdgeInsets.only(right: 5),
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Facebook'),
                    onPressed: () {},
                  )),
              Container(
                            height:45,
                  width: computedWidth / 2,
                  child: FlatButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text('Google +'),
                    onPressed: () {},
                  ))
            ],
          )
        ]),
      ),
    );
  }
}

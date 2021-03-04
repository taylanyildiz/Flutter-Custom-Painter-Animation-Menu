import 'package:flutter/material.dart';

class BackgroundPage extends StatefulWidget {
  @override
  _BackgroundPageState createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          RaisedButton(
            onPressed: () {},
            child: Text("Click"),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

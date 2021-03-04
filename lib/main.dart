import 'package:flutter/material.dart';
import 'package:flutter_app_test_00012/screens/home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

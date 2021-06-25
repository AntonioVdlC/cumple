import 'package:flutter/material.dart';

import 'app/main.dart';
import 'onboarding/main.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isOnBoardingCompleted = false;

  void _onBoardingCompeted() {
    setState(() {
      _isOnBoardingCompleted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cumple – Birthday Reminder',
      home: _isOnBoardingCompleted
          ? Main()
          : OnBoarding(onComplete: _onBoardingCompeted),
    );
  }
}

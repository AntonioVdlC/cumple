import 'package:flutter/material.dart';

import 'steps/welcome.dart';
import 'steps/sync.dart';
import 'steps/notifications.dart';
import 'steps/finish.dart';

class OnBoarding extends StatefulWidget {
  final Function() onComplete;
  const OnBoarding({
    Key? key,
    required this.onComplete,
  }) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentStep = 0;

  void _onNext() {
    int nextStep = _currentStep + 1;
    if (nextStep > 3) {
      widget.onComplete();
      return;
    }

    setState(() {
      _currentStep = nextStep;
    });
  }

  Widget _getStepFromIndex(int index) {
    switch (index) {
      case 0:
        return Welcome(onNext: _onNext);
      case 1:
        return Sync(onNext: _onNext);
      case 2:
        return Notifications(onNext: _onNext);
      case 3:
        return Finish(onNext: _onNext);
      default:
        return Welcome(onNext: _onNext);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cumple – Birthday Reminder'),
      ),
      body: Container(
        child: _getStepFromIndex(_currentStep),
      ),
    );
  }
}

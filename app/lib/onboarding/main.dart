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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cumple – Birthday Reminder'),
      ),
      body: Center(
        child: _currentStep == 0
            ? Welcome(onNext: _onNext)
            : _currentStep == 1
                ? Sync(onNext: _onNext)
                : _currentStep == 2
                    ? Notifications(onNext: _onNext)
                    : _currentStep == 3
                        ? Finish(onNext: _onNext)
                        : null,
      ),
    );
  }
}

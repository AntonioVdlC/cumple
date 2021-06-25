import 'package:flutter/material.dart';

import 'steps/step1.dart';
import 'steps/step2.dart';
import 'steps/step3.dart';
import 'steps/step4.dart';

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
            ? OnBoardingStep1(onNext: _onNext)
            : _currentStep == 1
                ? OnBoardingStep2(onNext: _onNext)
                : _currentStep == 2
                    ? OnBoardingStep3(onNext: _onNext)
                    : _currentStep == 3
                        ? OnBoardingStep4(onNext: _onNext)
                        : null,
      ),
    );
  }
}

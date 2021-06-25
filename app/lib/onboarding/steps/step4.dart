import 'package:flutter/material.dart';

class OnBoardingStep4 extends StatelessWidget {
  final Function() onNext;
  const OnBoardingStep4({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Step 4'),
          Divider(height: 1.0),
          ElevatedButton(
            onPressed: onNext,
            child: Text('Get started'),
          )
        ],
      ),
    );
  }
}
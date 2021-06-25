import 'package:flutter/material.dart';

class OnBoardingStep3 extends StatelessWidget {
  final Function() onNext;
  const OnBoardingStep3({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Step 3'),
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
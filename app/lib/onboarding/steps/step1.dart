import 'package:flutter/material.dart';

class OnBoardingStep1 extends StatelessWidget {
  final Function() onNext;
  const OnBoardingStep1({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Step 1'),
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
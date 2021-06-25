import 'package:flutter/material.dart';

class Sync extends StatelessWidget {
  final Function() onNext;
  const Sync({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  void _syncContacts() {
    // TODO: Sync contacts
    // TODO: Save sync setting value
    onNext();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, friend! 👋🏽',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'To help you always keep everything in sync, you can sync this app with your contacts.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'You can also use this app without every syncing your contacts.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton(
                onPressed: _syncContacts,
                child: Text('Sync contacts'),
              ),
              TextButton(
                onPressed: onNext,
                child: Text('Skip'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

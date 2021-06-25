import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  final Function() onNext;
  const Notifications({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool _isNotificationOn = true;

  void _updateNotificationStatus(bool value) {
    // TODO: Save notification setting value
    setState(() {
      _isNotificationOn = value;
    });
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
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Now, to make sure you never forget to wish a birthday ever again, let’s set some notification settings!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SwitchListTile(
                title: Text('Enable Notifications'),
                contentPadding: const EdgeInsets.all(0),
                value: _isNotificationOn,
                onChanged: _updateNotificationStatus,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Text(
                  _isNotificationOn
                      ? 'You will receive a push notification on this phone for all birthdays on their day.'
                      : 'You will not be notified of your contacts\' upcoming bithdays.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: widget.onNext,
            child: Text('Continue'),
          )
        ],
      ),
    );
  }
}

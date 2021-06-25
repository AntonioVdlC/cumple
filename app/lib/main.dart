import 'package:flutter/material.dart';

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

class OnBoardingStep2 extends StatelessWidget {
  final Function() onNext;
  const OnBoardingStep2({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Step 2'),
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

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Home(),
    Stats(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cumple – Birthday Reminder'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Home'),
    );
  }
}

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Stats'),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Settings'),
    );
  }
}

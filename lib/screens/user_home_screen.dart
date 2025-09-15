import 'dart:async';

import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final List<String> _lyrics = [
    "Sundan mo",
    "Ang paghimig na lulan na aking pinagtatanto",
    "Sundan mo",
    "Ang paghimig ko",
    "Oh-oh-oh-oh",
    "Hindi ko maisip kung wala ka",
  ];

  final List<Duration> _timings = [
    Duration(seconds: 3),
    Duration(seconds: 11),
    Duration(seconds: 4),
    Duration(seconds: 9),
    Duration(seconds: 3),
    Duration(seconds: 8),
  ];

  int _currentLine = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _playLyrics();
  }

  void _playLyrics() {
    _showLine(0);
  }

  void _showLine(int index) {
    if (index >= _lyrics.length) return;

    setState(() {
      _currentLine = index;
    });

    _timer = Timer(_timings[index], () {
      _showLine(index + 1);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          _lyrics[_currentLine],
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF454545),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

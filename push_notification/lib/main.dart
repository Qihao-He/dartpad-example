import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import './src/message_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MessageHandler(),
      ),
    );
  }
}

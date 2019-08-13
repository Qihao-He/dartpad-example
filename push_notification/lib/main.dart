import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @overrider
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MessageHandler(),
      ),
    );
  }
}

class Messagehandler extends StatefulWidget {
  @override
  createState() => _MessageHandlerState();
}

class _MessaageHandlerState extends State<MessageHandler> {
  final FireStore _db = Firestore.instance;
  final FirebaseMessaging _fcm = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");

        final snackbar = SnackBar(
          context: Text(message['notification']['title']),
          action: SnackBarAction(
            label: 'Go',
            onPressed: () => null,
          ),
        );

        Scaffold.of(context).showSnackBar();
      },
      onResume: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
    );
  }

  @overrider
  Widget build(BuildContext context) {
    return null;
  }
}

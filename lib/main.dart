// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:heart_guard/pages/login_page.dart';

void main () => runApp(HeartGuardApp());

class HeartGuardApp extends StatelessWidget {
  const HeartGuardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HeartGuard app",
      home: Login(),
    );
  }
}


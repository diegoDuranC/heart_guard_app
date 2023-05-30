// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main () => runApp(HeartGuardApp());

class HeartGuardApp extends StatelessWidget {
  const HeartGuardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HeartGuard app",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../connection.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heart Guard"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: ShowBPM(),
      ),
    );
  }
}
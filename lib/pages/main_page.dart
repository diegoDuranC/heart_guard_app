import 'package:flutter/material.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heart Guard"),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Text("Main Page"),
      ),
    );
  }
}
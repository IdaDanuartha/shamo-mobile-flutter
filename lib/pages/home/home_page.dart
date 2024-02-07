import 'package:flutter/material.dart';
import 'package:mobile_flutter/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
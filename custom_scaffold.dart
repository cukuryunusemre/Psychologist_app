import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  CustomScaffold({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.purple.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: body,
      ),
    );
  }
}

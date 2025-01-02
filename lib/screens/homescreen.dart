import 'package:flutter/material.dart';
import 'package:moderntodoapp/components/header.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // header
          Header()
        ],
      ),
    ));
  }
}

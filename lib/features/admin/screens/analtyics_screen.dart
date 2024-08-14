import 'package:flutter/material.dart';

class AnaltyicsScreen extends StatefulWidget {
  const AnaltyicsScreen({super.key});

  @override
  State<AnaltyicsScreen> createState() => _AnaltyicsScreenState();
}

class _AnaltyicsScreenState extends State<AnaltyicsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('This is the analytics screen')),
    );
  }
}
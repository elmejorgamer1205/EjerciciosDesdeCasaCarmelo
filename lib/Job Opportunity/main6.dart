import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const JobOpportunity());
}

class JobOpportunity extends StatelessWidget {
  const JobOpportunity({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
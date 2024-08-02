import 'package:flutter/material.dart';

class MoneyMaster extends StatelessWidget {
  const MoneyMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Master',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(),
    );
  }
}

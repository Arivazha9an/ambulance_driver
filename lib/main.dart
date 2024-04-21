import 'package:ambulance_driver/ambulance_details.dart';
import 'package:ambulance_driver/assigned.dart';
import 'package:ambulance_driver/payment_screen.dart';
import 'package:ambulance_driver/provider/my_text_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MyTextProvider>(
      create: (context) => MyTextProvider(),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PaymentScreen());
  }
}

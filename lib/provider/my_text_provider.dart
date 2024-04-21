import 'package:flutter/material.dart';

class MyTextProvider extends ChangeNotifier {
  String _text = "323";

  String get text => _text;

  void setText(String newText) {
    _text = newText;
    notifyListeners(); // Notify listeners of the change
  }
}

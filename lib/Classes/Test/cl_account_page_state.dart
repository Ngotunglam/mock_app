// ignore_for_file: camel_case_types

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Cl_AccountPageState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}
